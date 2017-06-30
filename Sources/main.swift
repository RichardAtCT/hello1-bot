import TelegramBot

let bot = TelegramBot(token: "342737344:AAEWDEEBH47My7oj_mAv780Pn0Zdf3jdv_Q")

while let update = bot.nextUpdateSync() {
    if let message = update.message, let text = message.text {
        bot.sendMessageAsync(chat_id: message.from.id,
                             text: "Hi \(message.from.first_name)! You said: \(text).\n")
    }
}

fatalError("Server stopped due to error: \(bot.lastError)")
