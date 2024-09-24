{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "System Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_SYS_UP_DETECTAR_AUTO\n    in event EV_SYS_DOWN_DETECTAR_AUTO\n    in event EV_SYS_UP_APRETAR_BOTON\n    in event EV_SYS_UP_TICKET_GENERADO\n    in event EV_SYS_DOWN_TICKET_GENERADO\n    in event EV_SYS_UP_PASAR_BARRERA\n    in event EV_SYS_DOWN_PASAR_BARRERA\n    \ninternal:\n    var cantidad_autos_ev: integer = 0\n    \n    event EV_LED_BLINK_GENERAR_TICKET\n    event EV_LED_ON_TICKET_DISPONIBLE\n    event EV_LED_OFF_TICKET_DISPONIBLE \n    event EV_LED_ON_BARRERA\n    event EV_LED_OFF_BARRERA \n    \n\n\n\n\n\n"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -430,
          "y": -270
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "748ad968-4dac-4d49-8736-29a2b0fe05a0",
        "z": 12,
        "embeds": [
          "84874018-0357-4fdd-8f66-70885d19e6a3"
        ],
        "marker": [
          "Initial entry must have an outgoing transition."
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -430,
          "y": -255
        },
        "id": "84874018-0357-4fdd-8f66-70885d19e6a3",
        "z": 13,
        "parent": "748ad968-4dac-4d49-8736-29a2b0fe05a0",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -307.1812515258789,
          "y": -287.5
        },
        "size": {
          "height": 80,
          "width": 140
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0502d314-efe1-455a-8dc0-3835356945c4",
        "z": 18,
        "marker": [
          "Node is not reachable."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_SIN_AUTO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 60,
          "y": -207.5
        },
        "size": {
          "height": 85,
          "width": 170
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "09f560b9-9b5f-487f-ad93-d7b9d4090956",
        "z": 51,
        "marker": [
          "Node is not reachable."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_GENERANDO_TICKET"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "09f560b9-9b5f-487f-ad93-d7b9d4090956"
        },
        "target": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 137.18124389648438,
              "dy": 43.70001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_DETECTAR_AUTO",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.00870339355837415,
              "offset": 62.80871582031247,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "c722009d-6352-4d34-a0a2-f71fe5c3b0fb",
        "z": 53,
        "vertices": [
          {
            "x": -50,
            "y": -165
          },
          {
            "x": -50,
            "y": -243.8
          }
        ],
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 520,
          "y": -220
        },
        "size": {
          "height": 85,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3c59c173-016d-40b8-8894-24c24daa2681",
        "z": 61,
        "marker": [
          "Node is not reachable."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_TICKET_GENERADO"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "09f560b9-9b5f-487f-ad93-d7b9d4090956"
        },
        "target": {
          "id": "3c59c173-016d-40b8-8894-24c24daa2681",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22.38751220703125,
              "dy": 43.69999694824219,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_UP_TICKET_GENERADO\n/ raise EV_LED_ON_TICKET_DISPONIBLE",
                "fill": "#555555"
              }
            },
            "position": {
              "offset": 24.9999969482422,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "5f3d7e85-6a25-48c1-938d-65a0533094e2",
        "z": 62,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3c59c173-016d-40b8-8894-24c24daa2681"
        },
        "target": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 137.18124389648438,
              "dy": 23.70001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_DETECTAR_AUTO\n/ raise EV_LED_OFF_TICKET_DISPONIBLE",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.2365586184756482,
              "offset": -25.056370962597605,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "beac05bb-23e6-49be-93c1-af4b9c5023de",
        "z": 62,
        "vertices": [
          {
            "x": 604,
            "y": -262.8
          }
        ],
        "marker": [
          "Could not find declaration of EV_LED_OFF_TICKET_DISPONBLE\n'' is not an event."
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 970,
          "y": -210
        },
        "size": {
          "height": 85,
          "width": 140
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1009a563-2a02-4dbd-b701-e780e1ebd11b",
        "z": 74,
        "marker": [
          "Node is not reachable."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_DEJAR_PASAR"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "3c59c173-016d-40b8-8894-24c24daa2681"
        },
        "target": {
          "id": "1009a563-2a02-4dbd-b701-e780e1ebd11b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 70,
              "dy": 26.09296417236328,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_TICKET_GENERADO\n/ raise EV_LED_OFF_TICKET_DISPONIBLE;\nraise EV_LED_ON_BARRERA",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.4940478094692888,
              "offset": 35.00002685546875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "55a54fdd-1051-4a7e-a45b-ceed921fc294",
        "z": 75,
        "marker": [
          "Failed to parse Expression '/'."
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1009a563-2a02-4dbd-b701-e780e1ebd11b"
        },
        "target": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 107.18124389648438,
              "dy": 13.70001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_DETECTAR_AUTO\n/ raise EV_LED_OFF_BARRERA",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.16788718110791126,
              "offset": -25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "077e963d-ed73-4e7f-975d-ceaa20669241",
        "z": 76,
        "vertices": [
          {
            "x": -140,
            "y": -310
          }
        ],
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "748ad968-4dac-4d49-8736-29a2b0fe05a0"
        },
        "target": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 17.181243896484375,
              "dy": 53.70001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "bfbb9a7d-1737-4564-8a03-48849a15652a",
        "z": 77,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 60,
          "y": -20
        },
        "size": {
          "height": 80,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a16c2878-9d0c-46da-9e03-fad82e4037b7",
        "z": 87,
        "marker": [
          "Node is not reachable."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_ESPERANDO_BOTON"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a16c2878-9d0c-46da-9e03-fad82e4037b7"
        },
        "target": {
          "id": "09f560b9-9b5f-487f-ad93-d7b9d4090956",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90,
              "dy": 83.69999694824219,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_UP_APRETAR_BOTON\n/ raise EV_LED_BLINK_GENERAR_TICKET",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.4249417332387789,
              "offset": 25.054048458972325,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "f3c12ee3-1204-4648-b302-488091bddf3a",
        "z": 88,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4"
        },
        "target": {
          "id": "a16c2878-9d0c-46da-9e03-fad82e4037b7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0,
              "dy": 20,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_UP_DETECTAR_AUTO",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.7248985023483255,
              "offset": -25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "9cef2fad-9083-48dd-a98f-11abcf023182",
        "z": 90,
        "vertices": [
          {
            "x": -180,
            "y": -12.5
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a16c2878-9d0c-46da-9e03-fad82e4037b7"
        },
        "target": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 87.18124389648438,
              "dy": 83.70001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_DETECTAR_AUTO",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.2692443736679026,
              "offset": -35,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "f821ae56-eb3a-4085-9ac6-e7ce79c0b2af",
        "z": 91,
        "vertices": [
          {
            "x": -130,
            "y": 40
          }
        ],
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 630,
          "y": -10
        },
        "size": {
          "height": 70,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d79b698f-33c9-4302-a45e-4a05f32e660b",
        "z": 101,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_PASANDO"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1009a563-2a02-4dbd-b701-e780e1ebd11b"
        },
        "target": {
          "id": "d79b698f-33c9-4302-a45e-4a05f32e660b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 150,
              "dy": 55.800437927246094,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_UP_PASAR_BARRERA",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.7524771173583316,
              "offset": -22.998795075506575,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "e01c20e0-1f74-4262-96cf-77591fa7a87c",
        "z": 102,
        "vertices": [
          {
            "x": 1070,
            "y": 40
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d79b698f-33c9-4302-a45e-4a05f32e660b"
        },
        "target": {
          "id": "1009a563-2a02-4dbd-b701-e780e1ebd11b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 70,
              "dy": 86.09297180175781,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_PASAR_BARRERA",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.2955384097885294,
              "offset": -21.33968734741211,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "47a58723-0557-4e6d-8126-5a66a2f7caf7",
        "z": 102,
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 270,
          "y": 120
        },
        "size": {
          "height": 90,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "05e0cd34-f790-43cc-bcce-2fb2d976b6da",
        "z": 103,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_ENTRANDO"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "d79b698f-33c9-4302-a45e-4a05f32e660b"
        },
        "target": {
          "id": "05e0cd34-f790-43cc-bcce-2fb2d976b6da",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 150,
              "dy": 36.37767028808594,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_DETECTAR_AUTO",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5923679562256153,
              "offset": -14.836128343584477,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "b8780f53-9aef-416f-babf-0d4ff482b116",
        "z": 104,
        "vertices": [
          {
            "x": 750,
            "y": 156.38
          }
        ],
        "marker": [
          "Could not find declaration of EV_SYS_DOWN_\nTrigger 'EV_SYS_DOWN_' is no event."
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "05e0cd34-f790-43cc-bcce-2fb2d976b6da"
        },
        "target": {
          "id": "0502d314-efe1-455a-8dc0-3835356945c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 47.181243896484375,
              "dy": 83.70001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN_PASAR_BARRERA\n/ raise EV_LED_OFF_BARRERA;\ncantidad_autos_ev++",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.3423692954498282,
              "offset": -45.00000000000003,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "2da682cf-50cd-4e68-8021-b6fba9d4ebae",
        "z": 104,
        "vertices": [
          {
            "x": 90,
            "y": 150
          }
        ],
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -500,
          "y": -710
        },
        "size": {
          "height": 350,
          "width": 560
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "51df94d2-015f-481e-9291-373742a17322",
        "z": 201,
        "marker": [
          "Duplicate Region 'LED_TICKET_DISPONIBLE' in Statechart 'System'"
        ],
        "embeds": [
          "59ff8e54-c562-4d8d-b922-0d1cfb48d778",
          "269c003a-716b-41be-b504-e18038a0407f",
          "9de8d2c9-ed08-47cd-acad-de7b0dd0494c",
          "94cbe9fe-d1cd-4e05-a6bf-15e315ff6cbd",
          "2d290e55-e2d2-4c32-bfb0-292ab74d29c2",
          "b563a90e-27d2-435a-a222-c0fb9ddbc18e"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "LED_TICKET_DISPONIBLE"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -330,
          "y": -670
        },
        "size": {
          "height": 80,
          "width": 230
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "94cbe9fe-d1cd-4e05-a6bf-15e315ff6cbd",
        "z": 202,
        "marker": [
          "Duplicate State 'ST_LED_ON_TICKET_DISPONBLE' in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "parent": "51df94d2-015f-481e-9291-373742a17322",
        "attrs": {
          "name": {
            "text": "ST_LED_ON_TICKET_DISPONBLE"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -330,
          "y": -490
        },
        "size": {
          "height": 60,
          "width": 229.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2d290e55-e2d2-4c32-bfb0-292ab74d29c2",
        "z": 203,
        "marker": [
          "Duplicate State 'ST_LED_OFF_TICKET_DISPONBLE' in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "parent": "51df94d2-015f-481e-9291-373742a17322",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF_TICKET_DISPONBLE"
          },
          "specification": {
            "text": "\n"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -450,
          "y": -460
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "b563a90e-27d2-435a-a222-c0fb9ddbc18e",
        "z": 204,
        "embeds": [
          "26e99752-2428-4e55-a6d7-ecf2f4a349c5"
        ],
        "parent": "51df94d2-015f-481e-9291-373742a17322",
        "marker": [
          "Duplicate unnamed Entry in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -450,
          "y": -445
        },
        "id": "26e99752-2428-4e55-a6d7-ecf2f4a349c5",
        "z": 208,
        "parent": "b563a90e-27d2-435a-a222-c0fb9ddbc18e",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "b563a90e-27d2-435a-a222-c0fb9ddbc18e"
        },
        "target": {
          "id": "2d290e55-e2d2-4c32-bfb0-292ab74d29c2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 36.524478912353516,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "59ff8e54-c562-4d8d-b922-0d1cfb48d778",
        "z": 209,
        "parent": "51df94d2-015f-481e-9291-373742a17322",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2d290e55-e2d2-4c32-bfb0-292ab74d29c2"
        },
        "target": {
          "id": "94cbe9fe-d1cd-4e05-a6bf-15e315ff6cbd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 170,
              "dy": 66.52447509765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_ON_TICKET_DISPONIBLE",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.6111111111111112,
              "offset": 115,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "9de8d2c9-ed08-47cd-acad-de7b0dd0494c",
        "z": 209,
        "marker": [
          "Source and target of a transition must not be located in orthogonal regions!"
        ],
        "parent": "51df94d2-015f-481e-9291-373742a17322",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "94cbe9fe-d1cd-4e05-a6bf-15e315ff6cbd"
        },
        "target": {
          "id": "2d290e55-e2d2-4c32-bfb0-292ab74d29c2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 46.52447509765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_OFF_TICKET_DISPONIBLE",
                "fill": "#555555"
              }
            },
            "position": {
              "offset": 115,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "269c003a-716b-41be-b504-e18038a0407f",
        "z": 209,
        "vertices": [],
        "parent": "51df94d2-015f-481e-9291-373742a17322",
        "marker": [
          "Source and target of a transition must not be located in orthogonal regions!"
        ],
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 120,
          "y": -710
        },
        "size": {
          "height": 350,
          "width": 560
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "z": 210,
        "marker": [
          "Duplicate Region 'LED_TICKET_DISPONIBLE' in Statechart 'System'"
        ],
        "embeds": [
          "222b3417-7ec4-4c54-b862-4b37a0ffe5d5",
          "510ff2b7-a440-4185-a882-894f8bdd8b2e",
          "8355af35-7baa-4f40-b0be-c578a90d1fde",
          "045aa717-e2fc-46d3-88f5-0d4b36c2e060",
          "e1185147-08f6-4961-8c33-09b73a1e5ccd",
          "7f9f4c98-3833-4b76-9f78-d205d57f742f"
        ],
        "attrs": {
          "priority": {
            "text": 3
          },
          "name": {
            "text": "LED_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 290,
          "y": -670
        },
        "size": {
          "height": 80,
          "width": 230
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "045aa717-e2fc-46d3-88f5-0d4b36c2e060",
        "z": 211,
        "marker": [
          "Duplicate State 'ST_LED_ON_TICKET_DISPONBLE' in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "parent": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "attrs": {
          "name": {
            "text": "ST_LED_ON_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 290,
          "y": -490
        },
        "size": {
          "height": 60,
          "width": 229.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "e1185147-08f6-4961-8c33-09b73a1e5ccd",
        "z": 212,
        "marker": [
          "Duplicate State 'ST_LED_OFF_TICKET_DISPONBLE' in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "parent": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF_BARRERA"
          },
          "specification": {
            "text": "\n"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 170,
          "y": -460
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "7f9f4c98-3833-4b76-9f78-d205d57f742f",
        "z": 213,
        "parent": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "embeds": [
          "30bdecf5-b7cf-4abe-bcf6-d21ab03fc349"
        ],
        "marker": [
          "Duplicate unnamed Entry in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 170,
          "y": -445
        },
        "id": "30bdecf5-b7cf-4abe-bcf6-d21ab03fc349",
        "z": 217,
        "parent": "7f9f4c98-3833-4b76-9f78-d205d57f742f",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "7f9f4c98-3833-4b76-9f78-d205d57f742f"
        },
        "target": {
          "id": "e1185147-08f6-4961-8c33-09b73a1e5ccd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 36.524478912353516,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "222b3417-7ec4-4c54-b862-4b37a0ffe5d5",
        "z": 218,
        "parent": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e1185147-08f6-4961-8c33-09b73a1e5ccd"
        },
        "target": {
          "id": "045aa717-e2fc-46d3-88f5-0d4b36c2e060",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 170,
              "dy": 66.52447509765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_ON_BARRERA",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5111111450195313,
              "offset": 75,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "8355af35-7baa-4f40-b0be-c578a90d1fde",
        "z": 218,
        "marker": [
          "Source and target of a transition must not be located in orthogonal regions!"
        ],
        "parent": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "045aa717-e2fc-46d3-88f5-0d4b36c2e060"
        },
        "target": {
          "id": "e1185147-08f6-4961-8c33-09b73a1e5ccd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 46.52447509765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_OFF_BARRERA ",
                "fill": "#555555"
              }
            },
            "position": {
              "offset": 85,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "510ff2b7-a440-4185-a882-894f8bdd8b2e",
        "z": 218,
        "vertices": [],
        "marker": [
          "Source and target of a transition must not be located in orthogonal regions!"
        ],
        "parent": "52a04eed-8850-4b8b-91c4-cd6a6948835f",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 730,
          "y": -710
        },
        "size": {
          "height": 350,
          "width": 560
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a90fb847-3104-43f3-8005-a091bccea34b",
        "z": 219,
        "marker": [
          "Duplicate Region 'LED_TICKET_DISPONIBLE' in Statechart 'System'"
        ],
        "embeds": [
          "54e7345d-51ee-4134-8b51-88ba20181add",
          "ef692b41-18cf-4a25-87c4-f19eaf6e568f",
          "0aa942c4-4445-45b6-8db4-15bc967be2d9",
          "7132dcb7-723d-4a16-8aa0-6ada211814f0",
          "cd67bd0f-0ee8-4f5d-91a8-9427ae108406",
          "67fa2f76-d110-4b1b-b106-ab3e11dee4af"
        ],
        "attrs": {
          "priority": {
            "text": 2
          },
          "name": {
            "text": "LED_GENERAR_TICKET"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 900,
          "y": -670
        },
        "size": {
          "height": 80,
          "width": 230
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "7132dcb7-723d-4a16-8aa0-6ada211814f0",
        "z": 220,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "a90fb847-3104-43f3-8005-a091bccea34b",
        "attrs": {
          "name": {
            "text": "ST_LED_ON_TICKET_DISPONBLE"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 900,
          "y": -490
        },
        "size": {
          "height": 60,
          "width": 229.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "cd67bd0f-0ee8-4f5d-91a8-9427ae108406",
        "z": 221,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "a90fb847-3104-43f3-8005-a091bccea34b",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF_TICKET_DISPONBLE"
          },
          "specification": {
            "text": "\n"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 780,
          "y": -460
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "67fa2f76-d110-4b1b-b106-ab3e11dee4af",
        "z": 222,
        "marker": [
          "Duplicate unnamed Entry in Region 'LED_TICKET_DISPONIBLE'"
        ],
        "parent": "a90fb847-3104-43f3-8005-a091bccea34b",
        "embeds": [
          "e40f7297-e3e1-4d60-b76e-298240d127c2"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 780,
          "y": -445
        },
        "id": "e40f7297-e3e1-4d60-b76e-298240d127c2",
        "z": 226,
        "parent": "67fa2f76-d110-4b1b-b106-ab3e11dee4af",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "67fa2f76-d110-4b1b-b106-ab3e11dee4af"
        },
        "target": {
          "id": "cd67bd0f-0ee8-4f5d-91a8-9427ae108406",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 36.524478912353516,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "54e7345d-51ee-4134-8b51-88ba20181add",
        "z": 227,
        "parent": "a90fb847-3104-43f3-8005-a091bccea34b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cd67bd0f-0ee8-4f5d-91a8-9427ae108406"
        },
        "target": {
          "id": "7132dcb7-723d-4a16-8aa0-6ada211814f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 170,
              "dy": 66.52447509765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_BLINK_GENERAR_TICKET",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5111111450195313,
              "offset": 105,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "0aa942c4-4445-45b6-8db4-15bc967be2d9",
        "z": 227,
        "marker": [
          "Source and target of a transition must not be located in orthogonal regions!"
        ],
        "parent": "a90fb847-3104-43f3-8005-a091bccea34b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7132dcb7-723d-4a16-8aa0-6ada211814f0"
        },
        "target": {
          "id": "cd67bd0f-0ee8-4f5d-91a8-9427ae108406",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 46.52447509765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 2 s",
                "fill": "#555555"
              }
            },
            "position": {
              "offset": 65,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "ef692b41-18cf-4a25-87c4-f19eaf6e568f",
        "z": 227,
        "vertices": [],
        "marker": [
          "no viable alternative at input '<EOF>'"
        ],
        "parent": "a90fb847-3104-43f3-8005-a091bccea34b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "05e0cd34-f790-43cc-bcce-2fb2d976b6da"
        },
        "target": {
          "id": "d79b698f-33c9-4302-a45e-4a05f32e660b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80,
              "dy": 60,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_UP_DETECTAR_AUTO",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.4719282503335377,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "98f4f58e-41d6-407a-901d-4047657d5385",
        "z": 228,
        "vertices": [
          {
            "x": 710,
            "y": 140
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "schemaKey": "yakindu::c",
      "LicenseHeader": {
        "licenseText": ""
      },
      "FunctionInlining": {
        "inlineReactions": false,
        "inlineEntryActions": false,
        "inlineExitActions": false,
        "inlineEnterSequences": false,
        "inlineExitSequences": false,
        "inlineChoices": false,
        "inlineEnterRegion": false,
        "inlineExitRegion": false,
        "inlineEntries": false
      },
      "OutEventAPI": {
        "observables": false,
        "getters": false
      },
      "IdentifierSettings": {
        "moduleName": "System",
        "statemachinePrefix": "system",
        "separator": "_",
        "headerFilenameExtension": "h",
        "sourceFilenameExtension": "c"
      },
      "Tracing": {
        "enterState": false,
        "exitState": false,
        "generic": false
      },
      "Includes": {
        "useRelativePaths": false
      },
      "GeneratorOptions": {
        "userAllocatedQueue": false,
        "metaSource": false
      },
      "GeneralFeatures": {
        "timerService": false
      }
    }
  }
}