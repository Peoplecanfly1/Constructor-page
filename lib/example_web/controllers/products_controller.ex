defmodule ExampleWeb.ProductsController do
  use ExampleWeb, :controller

  def show(conn, %{"id" => "rose"}) do
    json(conn, %{
      "product" => %{
        "name" => "Rose Dress",
        "description" => "Nice colored dress",
        "localization" => %{
          "fr" => %{
            "name" => "",
            "description" => ""
          },
          "es" => %{
            "name" => "",
            "description" => ""
          }
        },
        "images" => [
          %{
            "order" => 1,
            "url" => "https://labl.global.ssl.fastly.net/p/11a2a684/409/original.jpg"
          },
          %{
            "order" => 2,
            "url" => "https://labl.global.ssl.fastly.net/p/11a2a684/410/original.jpg"
          }
        ],
        "options" => ["Color", "Size"],
        "variants" => [
          %{
            "options" => ["Burnt", "XS"],
            "prices" => [
              %{
                "region" => "EU",
                "price" => 120
              },
              %{
                "region" => "Russia",
                "price" => 4000
              }
            ]
          },
          %{
            "options" => ["Burnt", "S"],
            "prices" => [
              %{
                "region" => "EU",
                "price" => 130
              },
              %{
                "region" => "Russia",
                "price" => 4300
              }
            ]
          },
          %{
            "options" => ["Olive", "S"],
            "prices" => [
              %{
                "region" => "EU",
                "price" => 120
              },
              %{
                "region" => "Russia",
                "price" => 4000
              }
            ]
          },
          %{
            "options" => ["Olive", "M"],
            "prices" => [
              %{
                "region" => "EU",
                "price" => 120
              },
              %{
                "region" => "Russia",
                "price" => 4000
              }
            ]
          }
        ]
      },
      "regions" => [
        %{
          "name" => "EU",
          "currency" => "EUR"
        },
        %{
          "name" => "Russia",
          "currency" => "RUB"
        }
      ],
      "locales" => [
        "en",
        "fr",
        "es"
      ],
      "default_locale" => "en"
    })
  end

  def show(conn, %{"id" => "caren"}) do
    json(conn, %{
      "product" => %{
        "name" => "Caren swimsuit",
        "description" => "",
        "localization" => %{},
        "images" => [],
        "options" => [],
        "variants" => [
          %{
            "options" => [],
            "prices" => [
              %{
                "region" => "EU",
                "price" => 60
              },
              %{
                "region" => "Russia",
                "price" => 3400
              }
            ]
          }
        ]
      },
      "regions" => [
        %{
          "name" => "EU",
          "currency" => "EUR"
        },
        %{
          "name" => "Russia",
          "currency" => "RUB"
        }
      ],
      "locales" => [
        "en",
        "fr",
        "es"
      ],
      "default_locale" => "en"
    })
  end
end
