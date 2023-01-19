cookies = ['sugar cookie','chocolate chip cookie','raspberry cookie','white chocolate cookie', 'spiderman cookie']
wisdoms = ['It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it.',
    'Whenever you find yourself on the side of the majority, it is time to reform (or pause and reflect).',
    'Any fool can know. The point is to understand.',
    'The secret of life is to fall seven times and to get up eight times.',
    'The secret of life is to fall seven times and to get up eight times.',
    'The secret of life is to fall seven times and to get up eight times.',
    'Don\'t be pushed around by the fears in your mind. Be led by the dreams in your heart.',
    'Don\'t be pushed around by the fears in your mind. Be led by the dreams in your heart.',
    'Don\'t be pushed around by the fears in your mind. Be led by the dreams in your heart.',
    'Don\'t be pushed around by the fears in your mind. Be led by the dreams in your heart.',
    'Don\'t be pushed around by the fears in your mind. Be led by the dreams in your heart.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'Your time is limited, so don\'t waste it living someone else\'s life.',
    'The flower that blooms in adversity is the rarest and most beautiful of all.'
    ]
cookie_consumption = {}
cookie_picked = ''
last_wisdoms = []
def validate_cookie(cookies, cookie)
    if cookies.include?(cookie)
        true
    else
        puts "This is not a cookie. Pick a cookie from the list"
        false
    end
end
def cookie_counter(cookie_consumption, cookie_picked)
    if cookie_consumption.include?(cookie_picked)
        cookie_consumption.store(cookie_picked, cookie_consumption[cookie_picked] + 1)
    else
        cookie_consumption.store(cookie_picked, 1)
    end
end
while true
    puts "Pick a cookie. To quit, type \'end\'."
    puts cookies.to_s
    cookie_picked = gets.chomp
    if cookie_picked == 'end'
        break
    end
    if validate_cookie(cookies, cookie_picked) == false
        next
    end
    cookie_counter(cookie_consumption, cookie_picked)
    #selects a wisdom that was not selected at least 2 times before
    non_repeated = wisdoms - last_wisdoms
    new_wisdom = non_repeated.sample
    last_wisdoms << new_wisdom
    #removes first element of the array if there are more than 3
    if last_wisdoms.length > 3
        last_wisdoms.shift
    end
    #puts last_wisdoms.to_s
    if cookie_picked == 'spiderman cookie'
        puts "You can't be a friendly neighborhood spider-man if there is no neighborhood."
    else
         puts last_wisdoms[-1]
    end
end
puts "You have eaten:"
puts cookie_consumption