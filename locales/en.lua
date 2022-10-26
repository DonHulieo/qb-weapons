local Translations = {
    error = {
        canceled = 'Canceled',
        max_ammo = 'Max Ammo Capacity',
        no_weapon = 'You have no weapon.',
        no_support_attachment = 'This weapon does not support this attachment.',
        no_weapon_in_hand = 'You dont have a weapon in your hand.',
        weapon_broken = 'This weapon is broken and can not be used.',
        no_damage_on_weapon = 'This weapon is not damaged..',
        weapon_broken_need_repair = 'Your weapon is broken, you need to repair it before you can use it again.',
        attachment_broken = '%{value} is broken, you need to remove it for your weapon to work again.',
        attachment_already_on_weapon = 'You already have a %{value} on your weapon.'
    },
    success = {
        reloaded = 'Reloaded'
    },
    info = {
        loading_bullets = 'Loading Bullets',
        repairshop_not_usable = 'Someone else\'s weapon is here',
        weapon_will_repair = 'Your weapon will be repaired.',
        take_weapon_back = 'Took back weapon',
        take_weapon_nil = 'Finders keepers...',
        repair_weapon_price = 'Cost for repair, $%{value}',
        removed_attachment = 'You removed %{value} from your weapon!',
        hp_of_weapon = 'Durability of your weapon',
        weapon_repair_started = 'Started Repair!',
        not_enough_cash = 'Not enough cash!',
    },
    mail = {
        sender = 'Tyrone',
        subject = 'Repair',
        message = 'Your %{value} is repaired u can pick it up at the location. <br><br> Peace out madafaka'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
