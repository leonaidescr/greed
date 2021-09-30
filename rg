<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }

      body {
        background-color: rgb(243, 243, 243);
      }

      header {
        background-color: #42a5f5;
        padding: 10px 20px;
        border-radius: 0 0 50px 50px;
        position: relative;
      }

      header::after {
        content: "";
        position: absolute;
        left: 0;
        right: 0;
        height: 100%;
        background-color: #2499f7;
        border-radius: 0 0 50px 50px;
        top: 15px;
        z-index: -1;
      }

      section {
        margin-top: 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      section p {
        color: rgb(61, 149, 231);
        font-size: 14px;
      }

      section a {
        display: inline-flex;
        justify-content: center;
        align-items: center;
        border-radius: 12px;
        gap: 2px;
        padding: 4px 20px;
        background-color: #fff;
        border: 2px solid #fff;
        color: #fff;
        font-size: 14px;
      }

      .cards {
        margin-top: 20px;
        background-color: rgb(93, 177, 255);
        border-radius: 20px;
        padding: 10px 30px 15px;
        display: flex;
        align-items: center;
        justify-content: space-between;
      }

      .card {
        display: flex;
        flex-direction: column;
        align-items: center;
      }

      .cards .item {
        border: 3px solid #fff;
        padding: 2px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 10px;
      }

      .card p {
        font-size: 12px;
        color: #fff;
      }

      .provider {
        background-color: #f5f5f5;
        box-shadow: 8px 8px 20px rgb(0, 0, 0, 0.2), -8px -8px 20px rgb(255, 255, 255);
        margin: 50px 20px 20px;
        border-radius: 16px;
        padding: 30px 15px;
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
      }

      .card-provider {
        width: 55px;
        height: 55px;
        box-shadow: 6px 6px 6px rgb(0, 0, 0, 0.2), -6px -6px 6px rgb(255, 255, 255);
        background-color: rgb(236, 236, 236);
        border-radius: 29%;
        padding: 6px;
      }

      img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 10px;
      }

      .tampilText {
        background-color:#5FB2FF;
        box-shadow: 6px 6px 6px rgb(0, 0, 0, 0.2), -6px -6px 6px rgb(255, 255, 255);
        margin: 40px 20px 20px;
        border-radius: 200px;
        padding: 6px;
        color: #FFF;
        font-size: 10px;
        text-align: center;
      }

      #pesan.animasi {
        animation: hilangText 1s ease-in-out forwards;
        opacity: 0;
        transform: scale(0);
      }

      @keyframes hilangText {
        100% {
          opacity: 1;
          transform: scale(1);
        }
      }

      .popup-shadow {
        position: fixed;
        inset: 0;
        z-index: 2;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        opacity: 0;
        transform: scale(0);
      }

      .popup-shadow.popup {
        animation: popup 400ms ease-in-out forwards;
      }

      @keyframes popup {
        100% {
          opacity: 1;
          transform: scale(1);
        }
      }

      .subpopup {
        background-color: rgb(0, 0, 0, 0.8);
        padding: 30px 15px 20px;
        border-radius: 16px;
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 90%;
      }

      .popup-shadow img {
        width: 40px;
        height: 40px;
        object-fit: cover;
        border-radius: 50%;
      }

      h2 {
        margin-bottom: 40px;
        text-transform: uppercase;
        font-size: 16px;
      }

      .items-popup {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        width: 100%;
        text-align: center;
      }

      .popup-shadow .item-popup {
        display: flex;
        flex-direction: column;
        align-items: center;
      }

      .popup-shadow .item-popup {
        color: #fff;
      }

      .popup-shadow .item-popup p {
        font-size: 10px;
        margin-top: 5px;
      }

      a {
        text-decoration: none;
      }

      #popup-qris {
        position: fixed;
        inset: 0;
        display: grid;
        place-items: center;
        background-color: rgba(0, 0, 0, 0.5);
        opacity: 0;
        transform: scale(0);
      }

      #popup-qris.popup-qris {
        animation: popup-qris 400ms ease-in-out forwards;
      }

      @keyframes popup-qris {
        100% {
          opacity: 1;
          transform: scale(1);
        }
      }

      #popup-qris > img {
        width: 300px;
        height: 300px;
      }

    </style>
  </head>
  <body>
    <header>
      <div class="cards">
        <div class="card">
          <a href="#" class="item" id="qrs">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
              <path fill="none" d="M0 0h24v24H0z" />
              <path d="M16 17v-1h-3v-3h3v2h2v2h-1v2h-2v2h-2v-3h2v-1h1zm5 4h-4v-2h2v-2h2v4zM3 3h8v8H3V3zm2 2v4h4V5H5zm8-2h8v8h-8V3zm2 2v4h4V5h-4zM3 13h8v8H3v-8zm2 2v4h4v-4H5zm13-2h3v2h-3v-2zM6 6h2v2H6V6zm0 10h2v2H6v-2zM16 6h2v2h-2V6z" fill="rgba(255,255,255,1)" />
            </svg>
          </a>
          <p>QRIS</p>
        </div>
        <div class="card">
          <a href="#" class="item">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
              <path fill="none" d="M0 0h24v24H0z" />
              <path d="M2 9.5V4a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v5.5a2.5 2.5 0 1 0 0 5V20a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-5.5a2.5 2.5 0 1 0 0-5zM9 9v2h6V9H9zm0 4v2h6v-2H9z" fill="rgba(255,255,255,1)" />
            </svg>
          </a>
          <p>Voucher</p>
        </div>
        <div class="card">
          <a href="https://wa.me/6281280625697" class="item">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
              <path fill="none" d="M0 0h24v24H0z" />
              <path
                d="M2.004 22l1.352-4.968A9.954 9.954 0 0 1 2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10a9.954 9.954 0 0 1-5.03-1.355L2.004 22zM8.391 7.308a.961.961 0 0 0-.371.1 1.293 1.293 0 0 0-.294.228c-.12.113-.188.211-.261.306A2.729 2.729 0 0 0 6.9 9.62c.002.49.13.967.33 1.413.409.902 1.082 1.857 1.971 2.742.214.213.423.427.648.626a9.448 9.448 0 0 0 3.84 2.046l.569.087c.185.01.37-.004.556-.013a1.99 1.99 0 0 0 .833-.231c.166-.088.244-.132.383-.22 0 0 .043-.028.125-.09.135-.1.218-.171.33-.288.083-.086.155-.187.21-.302.078-.163.156-.474.188-.733.024-.198.017-.306.014-.373-.004-.107-.093-.218-.19-.265l-.582-.261s-.87-.379-1.401-.621a.498.498 0 0 0-.177-.041.482.482 0 0 0-.378.127v-.002c-.005 0-.072.057-.795.933a.35.35 0 0 1-.368.13 1.416 1.416 0 0 1-.191-.066c-.124-.052-.167-.072-.252-.109l-.005-.002a6.01 6.01 0 0 1-1.57-1c-.126-.11-.243-.23-.363-.346a6.296 6.296 0 0 1-1.02-1.268l-.059-.095a.923.923 0 0 1-.102-.205c-.038-.147.061-.265.061-.265s.243-.266.356-.41a4.38 4.38 0 0 0 .263-.373c.118-.19.155-.385.093-.536-.28-.684-.57-1.365-.868-2.041-.059-.134-.234-.23-.393-.249-.054-.006-.108-.012-.162-.016a3.385 3.385 0 0 0-.403.004z"
                fill="rgba(255,255,255,1)"
              />
            </svg>
          </a>
          <p>Keluhan</p>
        </div>
      </div>
    </header>

    <div class="provider">
      <a href="https://retailgreed.store/digital/68147" class="card-provider" id="pullsa">
        <img src="data:image/png;base64,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"PULSA" />
      </a>
      <a href="https://retailgreed.store/digital/6987678908765" class="card-provider" id="intrnet">
        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABmJLR0QA/wD/AP+gvaeTAAAAaklEQVRIiWNgGAUDDRipYYjJjNv/sYmfyVBlZKKGBfgAVS349/+/77///31pZgE2wEKMInxhTEjv4IoDbGFMVQvIASwMDJSFMSFA3zggJ4xJsoAWYOhbgJKTmRgZN+NTTI48zX0wCgYeAACg0yIB9hH0UAAAAABJRU5ErkJggg==" alt="Internet" />
      </a>
      <a href="https://retailgreed.github.io/categoryg/" class="card-provider" id="tepsms">
        <img src="data:image/png;base64,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" alt="tlp sms" />
      </a>
      <a href="https://retailgreed.github.io/gamecategory/" class="card-provider" id="e-wallet">
        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QA/wD/AP+gvaeTAAAEeklEQVR4nO3dzW9UVRgG8Oe5nVbDAmxDsIVqiPZDg4FAP4KKEV2wIl241bjTFonGiImmibFKZGGiuNFC41+giVb2BoM0KpSNCdGmHxgrEkDTCLYay5zHBUUIgTtzztxpz3jfX9JFM+e89819Mvdj7p07gDHGGGOMMcYYY4wxtYHVKLpz6Ghhobm1R8J9AtaJaKjGcqJD98Wp/s4fKylRyKoXAOg9NLHFIXnlT2A3gKZrcVcl9QgJyQyAlQ+k6/DEWip5zwHPAEiyqJlXFQfSOzLd4ZyOAOrMoqG8qyiQnpHJTc65MQBrMuon94I3Lw9/fLpJwigsjEwFB7JYbPgAQluWzZjAQLZ9NLMZwtNZN2MC9yFJUtyH8sOcJXEhZDm1htRcpTW8A9k5dLSwdJ5Ryiid9p18oWMmoK/c8g5kfv09vXBqKjFsdLy/7SmQCuwrt7z3IU5uY4khEvGqhREmYKeetJQYMHuqv306qBsTEIi0q8SIUoGZFN6BULhcYkh91+HJ+wP7yb2Q85A/Sg0g8D6GZB8yBvBeaYLOljGor7tl6vNtH07Zmbwn78Negq6sgUJfUqe+7kOTv5A4nz6WGwStvr4QXiT0m29vy01CEcB5SMeTgvv0xHMPnKm0pve1o+7hySEQb1a64P+hRQAj/6xaeO37Z7fMhxax7Xx26gHsbVhY9fXm4al1oUUskOxtbaA+2/TJ6aD7CCyQ6nj0zrn6gZCJFkiVUMnrIYf+FkjVqKVn/fR231mZByJoHsClrOvWJOEh3ymZ3pcFAAR/h8OLIttJd7fERhJ3pc/BvQLXXP/fXRCYfu4Sh10AVt/uRSfnfbSVeSAA4CgHaELCBCCorA/ibx4U/6f3CdmLlEAoeq9f24dExgKJjAUSGQskMhZIZCyQyFggkbFAImOBRMYCiYwFEhkLJDIWSGQskMhYIJGpyvWQWkKoE0x2k2iFw2VRxwR+CZV3FSdruQ4kIZ8Q+DKBBAJAgOBWgl2OeHclQsntJisBGwHs5S3XgXYkwJPL3hRyHIjIHgB33P51PLaM7fwnt4EQSn3gAZV+Y0a15DYQR86mvS7g5+Xq5Ua5DYTF4jiAW4dCFuVwZHk7uiq3gYi84sT9uCkUAn9L7iCoqZXoK9eHvYA7J6eXAHaBaAVwyYEnUMbX9qol54FcfacA+G7pDyt9g15uN1mxskAiY4FExgKJjAUSGQskMhZIZCyQyFggkbFAImOBRMYCiYwFEhkLJDIWSGS8r4eI+Cv1qWdUc0IeDG+plqgZSlsbWvCtGPKIv3OpF3HEBiAvv5qQ/kA+kr/6VvTeZBW0eMx3Tl6xrjjmO8c7kG/3PPgTgG985+XQWMhDMcN26sIgVvric9xEaDBkYlAg43vavwJ1IGRuLghvnxzoCNq0Bx/2jj/f/gaod2DvlBuJ4v7xgba3QgtU/JuPPSOTj6uIAyAeqbRWjRsjNBj6zrgmsx/h3D78w8YiCzscsCEBGrOqGzMHzCXA2TpdOb50sGOMMcYYY4wxxhhjTG78C43pLYztVPVEAAAAAElFTkSuQmCC" alt="e wallet" />
      </a>
      <a href="#" class="card-provider" id="tagihan">
        <img src="data:image/png;base64,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" alt="Tagihan" />
      </a>
      <a href="#" class="card-provider" id="streaming">
        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QA/wD/AP+gvaeTAAAD2ElEQVR4nO3dT2gcdRjG8eeZSUtjPFRQE7UHq1nRW6GJGBG9FEEFbwoeRWqTm6ceYsXWai6FeJKKIL17KIggeAuloZo/Zw97WKHVEhREsG3qZufxUGP1sBNmZ3b23e7zgVwyzO8d+DKzu8kMC5iZmZmZmdWLgz6Abo5caB1M/2q/SnCGGSZB7Cu1oNBWgi1I62L67eaJJ/+o6FArFS7I3PLV8fbErfchvgdgok9jblBcnjiQLq28fXi7TzN6EirI7GetKaU73wCYqWnkWpqmr/9w/ImtmubtKUyQueWr4+37tlcAPFvnXBKbGSZe3Dzx6M0653aTDPoAdrXHt0+h5hgAIOEosxsn657bTYgz5MiF1sGx2zvX0L/XjL38KSaHIrzQhzhD9m3vvIbBxQCA+5nplQHO/1eIIEpwdNDHQKiuNxK5xgZ9AADADJPKv3heI3ClzAwBcwAOddueEVNl1q9KiCB7fegjcGV9vvFmmRGznze/EvBGt+0JsL/M+lUJccmyuxwkGAcJxkGCcZBgHCQYBwmm8N+yZs43T4P4sB8Hc88RzmwsNE4X2cVnSDAOEoyDBOMgwThIMA4SjIME04f/h+g3AV9Wv248BN4B+GCVa/YhCG9Kulz9uvGQfKvqNX3JCsZBgnGQYBwkGAcJxkGCiXFf1i6SpA5DyUNg9qvEFiQN3YwSAgVJHkmokxCnAQEiIDQFnQN4fXhmlBPiksWE4yn1MYTp//2eaCRMzoo8MAwzqhAjCHRMwMNdNk+m0rFhmFGFGEHE6dztZGMYZlQhRBCJt/O2Z1DpBzPrmFGFGEHYWc/bTnJtGGZUIUYQcV3o8hdi6lKWaXMYZlQhzNteZjyHRE2BL1OYFLEl4rukw6/Baj4m1DGjrDBBMiqDcBHQRQGA7vxkFT6WWseMskJcsuwuBwnGQYJxkGAcJBgHCcZBgnGQYBwkGAcJxkGCcZBgHCQYBwnGQYJxkGAcJBgHCcZBgnGQYBwkGAcJxkGCcZBgHCQYBwnGQYJxkGAK32wt4lbuvcnUVEJ+2vshDRNNIfd7NlT4e60KByF4/c5t492OgfsB5D4+du/Iv22e5C9FVyx8yRpT+1LRfUYV085q0X0KB/l+4ZmfUPLbbkbE6trxp1tFd+rtRV1YRO51a+SJ0GIvO/YUZGOhsQJqqZd9R4Lw0fr8Uz1d2nt+27vxbuMDUJ/AZ8p/ieLZjfnpM70uUPrputkvmi+pgyUQz5dda8itElrs9czYVdnjjs+d//HxDsdeyIDHEuCBqtaNLAN+T4CfU+1c/ufNjpmZmZmZmZmZ2cj4G2ouMm4qHUs9AAAAAElFTkSuQmCC" alt="streaming" />
      </a>
      <a href="#" class="card-provider" id="voucher">
        <img src="data:image/png;base64,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" alt="Voucher" />
      </a>
      <a href="#" class="card-provider" id="voucher-game">
        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QA/wD/AP+gvaeTAAAE40lEQVR4nO2dv28bZRjHv8/dlZROZYgTGFCRYyp+RCJysxUpCwEJqUxBYqiEWJw0fwAjZWRGIc5SJMSULqUdoGXJwNYYhrQUOLdIFajYCFVdohqd72HwDa2v957tu/fucXk+o9+753mjb+783L3f9zGgKIqiKJNBZSQ9teN/w4yFpHEH2Lq+Xvsiaby+41fBuGxMQjjTatRuJw0vN/1zIbCZeDqhvd+ovWfMYQGv6IQAwIwFAl41jFdM5zuEo8zJ5wMAEY6mzKFCZJxDKTjlpFWSUEGEoYIIQwURhgoiDBVEGKWUvQ6wlVLa7pnODzx03R4+TTsmZRp7MJS2DqWeryiKoiiKoijKZBS6HrK2y2678+ucN+NU+oHjFpl7XFwv7Ae9sLswd7Jz8X3qF5W3EEGWm+13GLwOYBXAs0XkzJFDANdCRvPHjdpV28msCvLGl78f93r9rwF+12aeArnC5JxtNaoPbCWwJshAjOAHAK/ZylESN5ic07ZEsfZycXBlPHViAMDrhPArW8GtXCHRd8a3NmJLgQlvtxq1a3nHtXKFMPGGjbiSIIaVvzF3QdZ22QXjrbzjCmR1bZdzL91zF+SPf36bx/SVtpNw7M79W0a70iTEFqiymtgC1zmO0JyUwZ9xSH+NM9GiIYfnCfSx6RiPjzwH4F7S+CRmvJggWU1so0F3QXw3exyb0L9pR4SOuSiaxIyna+rCUEGEoYIIQwURhgoiDBVEGLGyN6uJLQ+IaBHMi5aTHDDzgdUcE5jxYoKYHvoKg3mRiD6wm4IBwKog+xu1PYz5D6y3LGGoIMKYDkHy2O9X0p7BcZkOQfJYRitlv/H4TIcg/yNUEGHEyt76jl91DHu8Aw/dnz6q/W13Wqn0GEhsCgAABFQBzBQ0nyeydMGf9YLkZ7qQ8XC4uUF8BxXjsmlTfrRz6XyWiWaFgdut9ZrR0VJv+jdN6zpF4PawyYRPDIf8jCFnjt6yhKGCCEMFEYYKIgwVRBgqiDBUEGHEn0MIZ0zNv0bokGAdAqr1pn8z7Zii5pNEfwZbXoCLSePMeDj8WUwQU1s8QcyU/dA3CtEbjbHeaugtSxgqiDCmQxBdoBKGLlApZaGCCCNW9i43/XNpRrnIb2SPgYnNagoQHdjulnxq218BsJI8BXSHfXAxQUJg07TJJPpytCpI5Ci06yospnX1CgwLVOFggeoxQfSWJQwVRBgqiDBUEGGoIMJQQYQRK3uJ0DZVhPl0fOYXwfRM9jgWIZ5Pe9/ihOY3ZEToRqVt0ng79tnIExyRpc9/ecE94v6Zd1yJUN97/vrmS7l2pMj9lrUwd7KDQVu8p53DE7MncrfU5i5I1DAy9z5S8qDvbDTHtNQvC9s24soibNqIakWQqNPaFRuxhXBpf/3l720Etlb2MjlnAdywFb9EDpicD20FtyZIq1F9wOScBqX8AOR0cYnJeXMq28Q+Sn3HX416FK4COFZEzhw5ZPBVArZt3aYepfBW43fu36o45M1NQ6vxkINO694rHZynlB55iqIoiqIoiqKMQSmO16xmvKUL/qzbS+4YDQw2y5g6TkxiYiuCUn4LN6sZzwtQSemQgGjnkmm9YmwTWxHomrowVBBhqCDCUEGEoYIIQwURRillb1YzXjjYcJ9oQAOevCl/aA5jm9gURVEURTL/ATfigHP4cO4AAAAAAElFTkSuQmCC" alt="Voucher-Game" />
      </a>
    </div>

    <div class="tampilText">
      <p id="pesan">rafi****@gmail.com: Rp.150.000 via Mandiri</p>
    </div>

    <!-- Untuk Pulsa -->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>Pulsa</h2>
        <div href="https://retailgreed.store/68147" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://kampungdesigner.com/wp-content/uploads/edd/2018/10/Logo-Telkomsel-Vector.jpg" alt="" />
            <p>Telkomsel</p>
          </a>
          <a href="#" class="item-popup">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAB+FBMVEX////+1QDtGyb91gD/1AD90AD71gn81wD9///6/////f/654L/2gDrHCb///z///70////3QD/+/8kHCTsAAD///nFohAADhcSCh7KsAz42wDuGintHCL///bpHiDwGSr02wAAACjyGSPuAA71AADqACT+//AAABYAAC0AABoiHR+tkhYAACIcFCVrWhnpHxzrKTjxXGLwHRf677QeIBUlHRoOACfRugY2KBZMPRb04QDsGi/hHyP84HvkUVDjHhL2uLX0x8LsATb4mg//3TP/+Oj+89D87br94Ff56o/34Ef85ab//N/69cj67qv67J/23Gf364r+7tD04ln832z56nj04Dz94mH49KH965b/9uz71jjv5mnmwgNFMhw6MxATGin/xg376VDHtwDhtQGMdBZkWDN2bhqeiBkhDDVoWhKehh/DqRQuKA+2kx0GGhsaCg8bIw5QSRElGTCHbiAlFhEAEyklHxFGQhFKMRSckRw2KyWOfg4vFiwgCCYAADkAAAZnVQdAPSWungsvFR8tJiiQfSR9YybXxgYAGBFYQRHypwrweR3tUh7xfCbuWRz0iQ/8pRD7zJv7twbtTRXxbCnxm6T2s7DpNUn3iZblXmr73NjkeXj819LmZ2XsmpH3SmDxqIj0vLDrgXj+zoLxp7j4z9ftdymhD9DvAAAdY0lEQVR4nO1cjX/TRpq2LM3oI5L8KZLIkmwkbMCJUXC+IDZx0jghpE7SXgkcyaaNr0thafbSlrbcFa7ba3fvuk2yhA35AAfotgv7b947smWbJOX6W4fr/e70tLRmPH5nnnk/5n09Gvt8Hjx48ODBgwcPHjx48ODBgwcPHjx48ODBgwcPHjx48ODBgwcPHjx48ODBgwcPHjx48ODBgwcPHjx48ODBgwcPHjz8vwKv+zhFkWWZ43mfrP/S03kNCMvB1PjExYvTJUVI8eFfejqvASl+elLFDKLU4iVd/7+ow9IUxVDOv4gS35R/6ekcMQQ50MsyDA38aJqiGQZPKkGFq70L7ikEFOWIx+QEXeeV0vTM7GzvRIqXZYULHPEQTUgJFxPArg6aQpNyytWjIARk2RcWjnZMcHal9y2MEUUhtnhhWuGV12g4XElFVDNDlkbXeFdruswpHMcfsWvq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" alt="" />
            <p>Indosat</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://cdn.pngsumo.com/xl-png-4-png-image-xl-png-670_335.png" alt="" />
            <p>XL</p>
          </a>
          <a href="#" class="item-popup">
            <img "https://cdn.elevenia.co.id/g/7/1/8/0/7/2/15718072_B.jpg" alt="" />
            <p>Smartfren</p>
          </a>
		  <a href="#" class="item-popup">
            <img "https://www.bukandroid.com/wp-content/uploads/2020/10/Cara-Cek-Nomor-Kartu-3.jpg" alt="" />
            <p>Tri</p>
		  </a>
		  <a href="#" class="item-popup">
            <img "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/03/11/2106819042.jpg" alt="" />
            <p>Axis</p>
		  </a>
        </div>
      </div>
    </div>

    <!-- Untuk Internet-->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>Internet</h2>
        <div href="#" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>Mobile Legends</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>PUBG Mobile</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://s4.bukalapak.com/img/47152662752/large/data.png" alt="" />
            <p>Higgs Domino</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>Free Fire</p>
          </a>
        </div>
      </div>
    </div>

    <!-- Untuk Telepon & SMS-->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>Games</h2>
        <div href="#" class="items-popup">
          <a href="https://retailgreed.store/digital/67795" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>Mobile Legends</p>
          </a>
          <a href="https://retailgreed.store/digital/67827" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>PUBG Mobile</p>
          </a>
          <a href="https://retailgreed.store/digital/67828" class="item-popup">
            <img src="https://play-lh.googleusercontent.com/DX0TB8AGEzq2KLSU99hbMMkDTGnDvwmiO8LxuxC0HG8-ylNyGKuSlYTY1nZpMXnSd5k"
<a href="https://icons8.com/icon/89885/mobile-payment">Mobile Payment icon by Icons8</a> alt="" />
            <p>Growtopia</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>Free Fire</p>
          </a>
        </div>
      </div>
    </div>

    <!-- Untuk E-Wallet -->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>E-Wallet</h2>
        <div href="#" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>E-Wallet1</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>E-Wallet2</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://s4.bukalapak.com/img/47152662752/large/data.png" alt="" />
            <p>E-Wallet3</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>E-Wallet4</p>
          </a>
        </div>
      </div>
    </div>

    <!-- Untuk Tagihan -->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>Voucher</h2>
        <div href="#" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>Tagihan 1</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>Tagihan 2</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://s4.bukalapak.com/img/47152662752/large/data.png" alt="" />
            <p>Tagihan 3</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>Tagihan 4</p>
          </a>
        </div>
      </div>
    </div>

    <!-- Untuk Streaming -->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>History</h2>
        <div href="#" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>Streaming 1</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>Streaming 2</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://s4.bukalapak.com/img/47152662752/large/data.png" alt="" />
            <p>Streaming 3</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>Streaming 4</p>
          </a>
        </div>
      </div>
    </div>

    <!-- Untuk Voucher -->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>Referrals Progam</h2>
        <div href="#" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>Voucher 1</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>Voucher 2</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://s4.bukalapak.com/img/47152662752/large/data.png" alt="" />
            <p>Voucher 3</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>Voucher 4</p>
          </a>
        </div>
      </div>
    </div>

    <!-- Untuk Games -->
    <div class="popup-shadow">
      <div class="subpopup">
        <h2>Membership</h2>
        <div href="#" class="items-popup">
          <a href="#" class="item-popup">
            <img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1619149217/gubal97a1764r73zsged.jpg" alt="" />
            <p>Mobile Legends</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://awsimages.detik.net.id/community/media/visual/2020/12/09/pubg-mobile_43.jpeg?w=700&q=90" alt="" />
            <p>PUBG Mobile</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://s4.bukalapak.com/img/47152662752/large/data.png" alt="" />
            <p>Higgs Domino</p>
          </a>
          <a href="#" class="item-popup">
            <img src="https://asset.kompas.com/crops/BU9kcV24cOLREjfywVv0Xw_jfUs=/151x0:1231x720/750x500/data/photo/2020/06/25/5ef405986c087.jpg" alt="" />
            <p>Free Fire</p>
          </a>
        </div>
      </div>
    </div>

    <div id="popup-qris">
      <img src="https://i.postimg.cc/C1C3fSBN/photo-2021-08-17-11-39-36.jpg" alt="" id="qris-kecil" />
    </div>



    <script>
      const isiPesan = ["ambiman****14@gmail.com: Rp.200.000 via BNI", "krism****214@gmail.com: Rp.50.000 via BRI", "dansa****2@gmail.com: Rp.150.000 via DANA", "dura****4@gmail.com: Rp.350.000 via BCA", "jang1****@gmail.com: Rp.450.000 via BTPN"];

      const pesan = document.getElementById("pesan");
      let namaPembeli = 0;
      setInterval(() => {
        pesan.classList.add("animasi");
        pesan.innerText = isiPesan[namaPembeli];
        namaPembeli++;
        if (namaPembeli > isiPesan.length) {
          namaPembeli = 0;
          pesan.innerText = isiPesan[namaPembeli];
        }

        setTimeout(() => {
          pesan.classList.remove("animasi");
        }, 1500);
      }, 4000);

      const popup = document.querySelectorAll(".popup-shadow");
      const wrapperItems = document.querySelector(".provider");
        const pulsa = document.getElementById("pulsa");
        const internet = document.getElementById("internet");
        const telpSms = document.getElementById("telpsms");
        const games = document.getElementById("voucher-game");
        const eWallet = document.getElementById("e-wallet");
        const tagihan = document.getElementById("tagihan");
        const streaming = document.getElementById("streaming");
        const voucher = document.getElementById("voucher");


      const AllProviders = document.querySelectorAll('.card-provider');
      AllProviders.forEach(function(provider) {
        provider.addEventListener('click', function(e) {
          if(e.target.id == 'pulsa' || e.target.alt == 'PULSA') {
            popup[0].classList.add('popup')
          }else if(e.target.id == 'internet' || e.target.alt == 'Internet') {
            popup[1].classList.add('popup')
          }else if(e.target.id == 'telpsms' || e.target.alt == 'tlp sms') {
            popup[2].classList.add('popup')
          }else if(e.target.id == 'e-wallet' || e.target.alt == 'e wallet') {
            popup[3].classList.add('popup')
          }else if(e.target.id == 'tagihan' || e.target.alt == 'Tagihan') {
            popup[4].classList.add('popup')
          }else if(e.target.id == 'streaming' || e.target.alt == 'streaming') {
            popup[5].classList.add('popup')
          }else if(e.target.id == 'voucher' || e.target.alt == 'Voucher') {
            popup[6].classList.add('popup')
          }else if(e.target.id == 'voucher-game' || e.target.alt == 'Voucher-Game') {
            popup[7].classList.add('popup')
          }
        })
      })



      popup.forEach((popupRemove) => {
        document.body.addEventListener("click", (e) => {
          if (e.target.classList.contains("popup-shadow")) {
            popupRemove.classList.remove("popup");
          } else if (e.target.classList.contains("popup-qris")) {
            popupQris.classList.remove("popup-qris");
          }
        });

        document.querySelectorAll(".item-popup").forEach((item) => {
          item.addEventListener("click", () => {
            popupRemove.classList.remove("popup");
          });
        });
      });

      const QRIS = document.getElementById("qris");
      const popupQris = document.getElementById("popup-qris");
      const qrisKecil = document.querySelector("#qris-kecil");

      QRIS.addEventListener("click", (e) => {
        e.preventDefault();

        popupQris.classList.add("popup-qris");
      });

      qrisKecil.addEventListener("click", () => {
        const closePopupQris = document.getElementById("close-popupQris");
      });

      


    </script>
  </body>
</html>

<!-- vidio -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      .wrapper {
        margin: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgb(0, 0, 0, 0.3);
        border-radius: 24px;
        padding: 15px;
        height: 200px;
      }

      .subwrap {
        box-shadow: 0 0 10px rgb(0, 0, 0, 0.3);
        border-radius: 16px;
        padding: 10px;
        height: 180px;
      }

      iframe {
        max-height: 100%;
        max-width: 100%;
        border-radius: 16px;
      }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <div class="subwrap">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/MJUssi2c6Ls" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
  </body>
</html>


<!-- info -->
<!DOCTYPE html>
<html>
<head>

<style>


/Informasi Terbaru/
.info {
  font-size: 13px;
  font-weight: bold;
  color: #000;
  font-family: arial;
  box-shadow: 0px 0px 5px 1px rgba(0,0,0,0.0);
  border-radius: 20px;
  padding: 1px;
  background: #FFEF5E;
  width: 13%;
  margin-bottom: 10px;
  text-align: center;
  margin-left: 8px;
  margin-right:8px;
  margin-top: 5px;
}

.text {
  text-align:justify;
  color: #474747;
  border-bottom: #8a888c solid 0.5px;
  padding-bottom: 10px;
  padding-left:5px;
  padding-right:5px;
  font-family: helvetica;
  font-size: 13px;
  line-height:20px;
  margin-bottom: 20px;
}


/Style Icon/
.button {
  padding: 5px 5px 0px 5px;
  font-size: 10px;
  cursor: pointer;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #42A5F5;
  border: none;
  border-radius: 15px;
  width: 18%;
  margin: 3px;
  box-shadow: 0px 0px 5px 1px rgba(0,0,0,0.3);  
  font-weight: bold;
}


.button:hover {background-color: #ffde59;color: #24313d}

.button:active {
  background-color: #24313d;}

.mykiosid{
  box-shadow: 0px 0px 5px 1px rgba(0,0,0,0.3);  
  margin-top: 10px;
  margin: 4px;
  padding: 10px 10px 10px 10px;
  border-radius: 10px;
  width: auto;
  margin-bottom: 10px; 
}  

.subtittle {
  font-size: 15px;
  font-weight: bold;
  color: #ffff;
  font-family: arial;
  box-shadow: 0px 0px 5px 1px rgba(0,0,0,0.3);
  border-radius: 20px;
  padding: 5px;
  background: #24313d;
  margin-top: 10px;
  margin-bottom: 10px;
  text-align: center;
  margin-left: 8px;
  margin-right:8px;
}

.sidenav {
  height: 100%;
  width: 0%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #fff;
  overflow-x: hidden;
  transition: 0.5s;
  border-radius: 20px;
  margin-left: 0px;
  box-shadow: 0px 0px 5px 1px rgba(0,0,0,0.3);  
}

.sidenav a {
  padding: 0px;
  text-decoration: none;
  font-size: 25px;
  color: #5FB2FF;
  display: block;
}

.sidenav a:hover {
  color: #FFF;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
  color: #5FB2FF;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}}



</style>

<!--JAVA SCRIPT POP UP INFORMASI-->
<script>
function httpskiosidbukaolshopsiteakunlogin() {
  document.getElementById("info").style.width = "100%";
}
function httpskiosidbukaolshopsite() {
  document.getElementById("info").style.width = "0";
}
</script>
<!---Sip--->


<!--INFORMASI-->
<center><p class=""></center></center>
<div class="mykiosid">
<p class="info">Info</p>
<p class="text">
<b>21 September 2021</b><br/>Halo sultan, selamat datang di RetailGreed, Transaksi terpantau lancar, jangan lupa ikut progam referalls dan claim voucher/rewardsmu!</p>

<p class="info">Info</p>
<p class="text">
<b>20 September 2021</b><br/>Maintenance - perbaikan server</p>

<div id="info" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="httpskiosidbukaolshopsite()"><b>&times;</b></a>
  <div class="mykiosid">

<p class="info">Info</p>

<p class="text">
<b>17 September 2021</b><br/>Informasi lengkap sudah dibuat</p>
</div>
</div>
<center>
<center>
<a onclick="httpskiosidbukaolshopsiteakunlogin()">
<button class="button" style="width:100%;padding: 8px;font-size:12px;">Lainnya</button></center></a></center>
<br>

</head>
</html>
