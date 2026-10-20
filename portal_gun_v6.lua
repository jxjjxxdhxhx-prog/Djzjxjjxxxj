--!nonstrict
--[[
	╔════════════════════════════════════════════╗
	║   ПОРТАЛЬНАЯ ПУШКА  ·  LocalScript  v6    ║
	╚════════════════════════════════════════════╝

	КУДА ПОЛОЖИТЬ:  StarterPlayer ▸ StarterPlayerScripts ▸ LocalScript

	ЧТО УМЕЕТ
	  • Координаты (X Y Z) слева сверху — всегда, даже без пушки в руках
	  • Пушка в рюкзаке. Взял в руки → справа кнопка «МЕНЮ»
	  • Меню: ввод координат, «Выбрать на карте», «Запустить портал»,
	    недавние точки, сохранения, настройки (радиус, цвет, размер...)
	  • Карта: двигай пальцем, щипок = масштаб, ползунок = СЛОЙ (1 студ = 1 шаг).
	    Всё что выше выбранного слоя прячется — видно «этаж» как в разрезе
	  • Выстрел: если смотришь на стену — портал на стене,
	    если стены нет — портал в радиусе (по умолчанию 30 студов)
	  • Заставка перехода как в видео (вихрь, «Стабилизация портала...»)
	  • Пушка Рика: зелёная колба с вихрем, 3 кнопки, красный дисплей, ручка
	  • В портал входишь САМ — просто коснись его (кнопки «войти» больше нет)
	  • Меню ▸ КОРАБЛЬ: над тобой открывается большой портал, из него вылетает
	    корабль Рика. «СЕСТЬ» и лети (стик/WASD, пробел/▲ вверх, Shift/▼ вниз)

	СОХРАНЕНИЯ
	  • Если в игре есть серверный скрипт PortalGunSave (файл рядом) — точки
	    сохраняются в DataStore и живут между заходами
	  • Если запускаешь через executor — сохраняется в файл PortalGun_v1.json
	  • Иначе точки живут до выхода из игры

	v6 — ЧТО НОВОГО
	  • ПОДВАЛ РИКА: кнопок «спуститься/подняться» больше нет — шагни в люк в полу гаража и спрыгни вниз,
		обратно вылезай сам по жёлтой лестнице. В подвале: шахта с лампами, светящаяся дорожка к капсулам,
		бочки, ящики, верстак с колбами, тесла-катушка, настенный экран статуса (Феникс/клоны)
	  • КАПСУЛЫ ФЕНИКС/КЛОНИРОВАНИЯ: неоновая подсветка, купол-плафон, трубы, пузырьки, лампа состояния
	  • ВОЗРОЖДЕНИЕ В КАПСУЛЕ: затемнение → сборка ДНК (двойная спираль), сканер собирает тело снизу вверх,
		вспышка, жидкость сливается, стекло открывается, выходишь сам. Камера облетает капсулу
	  • СВОИ КНОПКИ ВЗАИМОДЕЙСТВИЯ: стеклянные кнопки с клавишей (на телефоне — тап по кнопке) вместо стандартных
	  • ШПРИЦ ДНК: пока шприц в руках, внизу экрана кнопка «ВЗЯТЬ СВОЁ ДНК». Тап шприцем рядом с игроком
		и кнопка «Взять ДНК» на другом игроке работают как раньше
	  • ЛАЗЕРНЫЙ ПИСТОЛЕТ перенесён на западный стол в гараже (у стены между штативами и лампой), старый столик убран

	v6 — ЧТО НОВОГО
	  • ЛАМПЫ БЕЗ СВЕТА: в доме, гараже и у столика все «светящиеся» блоки теперь просто материал Neon, света не излучают
	  • ТЕРМИНАЛ ПОГОДЫ в гараже (у западной стены): ясно, облачно, дождь, гроза, снег, туман; время суток (утро/день/вечер/ночь, ±1 час, ход времени)
	  • Фонари и лампы в доме в 5 раз тусклее; пистолет лежит на столе в гараже на боку
	  • СВЕТ В ДОМЕ: внутри дома и гаража общий свет карты мягко приглушается (слишком светло было из-за солнца),
	    лампы под потолком дают тёплый свет. Вышел на улицу — свет карты возвращается
	  • ГАРАЖ = ЛАБОРАТОРИЯ РИКА по скриншоту: фиолетовые и зелёно-серые стены, балки, жалюзи, перфодоска с колесом,
	    синие шкафы с кремовой столешницей, колбы на штативах, пробковая доска с красными нитями, часы, плакат,
	    розовая раковина, стиралка и сушилка, металлический стеллаж
	  • ЛАЗЕРНЫЙ ПИСТОЛЕТ РИКА лежит на западном столе гаража (v6): нажми «Взять» (или тапни по нему) → он в инвентаре.
	    Достань и тапай/кликай: зелёный луч. Это эффект на твоём экране (другие игроки не видят, урона нет)
	  • ДВОР: белый забор, цветы у кустов, коврик и табличка «ВОТИМС» у входа, лампы у гаражных ворот

	v6 — ЧТО НОВОГО
	  • КОРАБЛЬ + ПОРТАЛ: если выстрелить порталом, сидя в корабле, портал огромный (40 студов) и открывается
	    прямо по курсу. Влети в него на корабле — корабль вместе с тобой окажется в выбранной точке
	  • ДОМ ВОТИМС: построен далеко за картой (X 14000, Z 14000). МЕНЮ ▸ ★ СОХР. ▸ верхняя строка «ДОМ ВОТИМС»
	    ▸ «В ЦЕЛЬ» ▸ выстрели порталом — выходишь на ДОРОГУ перед домом (на корабле тоже).
	    Дом по фото и плану: кирпичный низ, гараж с кольцом, кухня, гостиная с балками, столовая,
	    красная гостиная, прихожая с лестницей, кабинет; наверху Саммер, Морти, Джерри и Бет, ванная, балкон

	v6 — ЧТО ПОЧИНЕНО
	  • ИНТЕРФЕЙС: на телефоне весь интерфейс (кнопки, хотбар, координаты) был сжат в узкую полоску сверху
	    экрана — из-за режима TopbarSafeInsets. Теперь он на весь экран, ниже верхней панели Roblox
	  • БОМБА: новая анимация броска — высокая дуга, кувырки, розовый шлейф, воронка и вспышка в портале
	  • МЕНЮ ▸ СКИН ▸ ＋ СВОЯ ПУШКА: вставь код модели, подставь её под руку (сдвиг, поворот, размер),
	    возьми в руки. Размер пушки есть и во вкладке СКИН, и во вкладке ПОРТАЛ
	  • МЕНЮ ▸ СКИН ▸ РАЗМЕР ПУШКИ: размер пушки в руках 30–300% (кнопки − / +), сброс до 100%
	  • КОРАБЛЬ: кнопки (СЕСТЬ/ВЫЙТИ, ▲, ▼, NOCLIP) больше не уходят за экран: NOCLIP теперь
	    обычная кнопка в правой колонке (раньше ехала за 3D-кнопкой на панели приборов и пропадала),
	    плюс все кнопки корабля автоматически подтягиваются внутрь экрана
	  • БОМБА: новая модель — шар с раструбами и розовыми линзами (как на фото)

	v6 — ЧТО НОВОГО
	  • МЕНЮ ▸ БОМБА: выбираешь игрока из списка → «Запустить бомбу». Ты активируешь
	    бомбу и кидаешь её в портал, она вылетает над целью, игрок падает, ползёт,
	    бомба взрывается — и сцена заканчивается. ЭТО АНИМАЦИЯ НА ТВОЁМ ЭКРАНЕ
	    (клиентский скрипт): другие игроки ничего не видят, урона никому нет
	  • МЕНЮ ▸ СКИН: пушка Рика (белая) или Злого Морти (золотая) — с 3D-превью.
	    Меняется сразу в руках и в хотбаре
	  • Старые иконки пушки/фляги справа убраны (вернуть: МЕНЮ ▸ ИНТЕРФЕЙС ▸ «Старые иконки»)
	  • Левая колонка вкладок меню теперь прокручивается (вкладок стало больше)
	  • Лимит 200 local: весь новый код в блоках do…end, на верхнем уровне новых local нет

	v6 — ЧТО БЫЛО
	  • СВОЙ ХОТБАР С ИКОНКАМИ: в инвентаре (внизу по центру) у пушки и фляги теперь
	    картинки (по твоим скринам), а не названия. Цифры 1-9 / тап — взять в руки.
	    Стандартная панель Roblox при этом прячется (Меню ▸ ИНТЕРФЕЙС ▸ «Свой хотбар»).
	    Хочешь свои картинки из Roblox — впиши ID в ICONS (gun / flask)
	  • КОРАБЛЬ: кнопки ▲ ВВЕРХ / ▼ ВНИЗ перенесены левее (раньше их перекрывала
	    кнопка прыжка Roblox) + удержание считается по каждому пальцу отдельно
	  • КОРАБЛЬ: НОУКЛИП — красная кнопка на панели приборов внутри корабля
	    (смотри вниз перед собой), ещё клавиша N. Включён — корабль летит сквозь всё
	  • Лимит локальных переменных (200) не тронут: новый код в блоках do…end
	    и внутри модуля корабля, на верхнем уровне новых local нет

	v6 — ЧТО ПОЧИНЕНО
	  • Загрузка сохранений больше не может «повесить» весь скрипт (раньше, если
	    PortalGunSave не отвечал, не появлялось ничего: ни HUD, ни пушки, ни меню)
	  • Справа всегда есть кнопка «◢ ПУШКА» — берёт/убирает пушку, даже если
	    хотбар скрыт игрой. Кнопка «МЕНЮ» появляется, когда пушка в руках
	  • Пушка выдаётся с повторами и проверкой; если пропала из рюкзака — выдаётся снова
	  • Любая ошибка при запуске показывается красной плашкой на экране
	    (и в Output с пометкой [PortalGun]) — можно сделать скриншот
]]

local __printf = function(...) print("[PortalGun]", ...) end
__printf("v6: скрипт стартовал")

-- метка статуса сверху по центру: если её нет на экране — скрипт вообще не запущен
-- (неправильное место / это Script, а не LocalScript / executor не выполнил файл)
local __bootLbl
local function __boot(text, color, ttl)
	pcall(function()
		local lpl = game:GetService("Players").LocalPlayer
		if not lpl then
			warn("[PortalGun] LocalPlayer = nil: это серверный Script. Нужен LocalScript в StarterPlayerScripts.")
			return
		end
		if not (__bootLbl and __bootLbl.Parent) then
			local pg = lpl:WaitForChild("PlayerGui", 10)
			if not pg then return end
			local old = pg:FindFirstChild("PortalGunBoot")
			if old then old:Destroy() end
			local g = Instance.new("ScreenGui")
			g.Name = "PortalGunBoot"
			g.ResetOnSpawn = false
			g.IgnoreGuiInset = true
			g.DisplayOrder = 998
			local l = Instance.new("TextLabel")
			l.AnchorPoint = Vector2.new(0.5, 0)
			l.Position = UDim2.new(0.5, 0, 0, 44)
			l.Size = UDim2.fromOffset(330, 26)
			l.BackgroundColor3 = Color3.fromRGB(9, 14, 22)
			l.BackgroundTransparency = 0.15
			l.Font = Enum.Font.Code
			l.TextSize = 14
			l.Parent = g
			g.Parent = pg
			__bootLbl = l
		end
		__bootLbl.Text = text
		__bootLbl.TextColor3 = color or Color3.fromRGB(255, 190, 40)
		if ttl then
			local lbl = __bootLbl
			task.delay(ttl, function() if lbl.Parent then lbl.Parent:Destroy() end end)
		end
	end)
end
__boot("◢ PortalGun v6: загрузка...")

-- красная плашка с текстом ошибки (чтобы на телефоне было видно, что именно сломалось)
local function __showFatal(msg)
	pcall(function()
		local pg = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 5)
		if not pg then return end
		local old = pg:FindFirstChild("PortalGunError")
		if old then old:Destroy() end
		local g = Instance.new("ScreenGui")
		g.Name = "PortalGunError"
		g.ResetOnSpawn = false
		g.DisplayOrder = 999
		g.IgnoreGuiInset = true
		local b = Instance.new("TextButton")
		b.AutoButtonColor = false
		b.BackgroundColor3 = Color3.fromRGB(120, 10, 20)
		b.BackgroundTransparency = 0.1
		b.TextColor3 = Color3.new(1, 1, 1)
		b.TextWrapped = true
		b.TextXAlignment = Enum.TextXAlignment.Left
		b.TextYAlignment = Enum.TextYAlignment.Top
		b.Font = Enum.Font.Code
		b.TextSize = 13
		b.AnchorPoint = Vector2.new(0.5, 0)
		b.Position = UDim2.new(0.5, 0, 0, 8)
		b.Size = UDim2.new(0.94, 0, 0, 170)
		b.Text = "PortalGun: ОШИБКА (тап — закрыть)\n" .. tostring(msg):sub(1, 700)
		b.Parent = g
		b.Activated:Connect(function() g:Destroy() end)
		g.Parent = pg
	end)
end

local __ok, __err = xpcall(function()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")
local Debris = game:GetService("Debris")
local TeleportService = game:GetService("TeleportService")
local MarketplaceService = game:GetService("MarketplaceService")

local lp = Players.LocalPlayer
local pgui = lp:WaitForChild("PlayerGui")

-- убираем старые копии (если скрипт запущен повторно)
for _, n in ipairs({ "PortalGunUI", "PortalGunFX", "PortalGunMenu" }) do
	local o = pgui:FindFirstChild(n)
	if o then o:Destroy() end
end
local oldFx = workspace:FindFirstChild("PortalGunClient")
if oldFx then oldFx:Destroy() end

local fx = Instance.new("Folder")
fx.Name = "PortalGunClient"
fx.Parent = workspace
__boot("◢ PortalGun v6: загружаю сохранения...")

----------------------------------------------------------------------
-- НАСТРОЙКИ ПО УМОЛЧАНИЮ И ТЕМЫ
----------------------------------------------------------------------
local THEMES = {
	{ name = "Оранж",   c1 = Color3.fromRGB(255, 170, 40),  c2 = Color3.fromRGB(255, 232, 130) },
	{ name = "Рик",     c1 = Color3.fromRGB(80, 230, 90),   c2 = Color3.fromRGB(190, 255, 150) },
	{ name = "Синий",   c1 = Color3.fromRGB(70, 160, 255),  c2 = Color3.fromRGB(170, 225, 255) },
	{ name = "Фиолет",  c1 = Color3.fromRGB(170, 90, 255),  c2 = Color3.fromRGB(225, 180, 255) },
	{ name = "Красный", c1 = Color3.fromRGB(255, 70, 80),   c2 = Color3.fromRGB(255, 175, 150) },
	{ name = "Циан",    c1 = Color3.fromRGB(0, 224, 255),   c2 = Color3.fromRGB(180, 250, 255) },
	{ name = "Розовый", c1 = Color3.fromRGB(255, 90, 190),  c2 = Color3.fromRGB(255, 200, 235) },
	{ name = "Белый",   c1 = Color3.fromRGB(235, 245, 255), c2 = Color3.fromRGB(255, 255, 255) },
}
local DEFAULTS = {
	radius = 30,      -- дальность выстрела, если нет стены (студы)
	size = 8,         -- высота портала (студы)
	theme = 1,        -- цвет портала
	enter = true,     -- анимация входа в портал (затягивает в воронку)
	anim = true,      -- заставка перехода
	hud = true,       -- координаты слева сверху
	tapfire = false,  -- стрелять тапом по экрану
	speed = 2,        -- скорость заставки 1/2/3
	life = 5,         -- сколько секунд живёт выходной портал
	shiph = 70,       -- на какой высоте над землёй открывается портал корабля (студы)
	shipspeed = 60,   -- скорость полёта корабля (студ/сек)
	snap = false,     -- ставить на пол в точке прилёта
	tracer = true,    -- луч выстрела
	fps = true,       -- FPS в HUD
	chip = true,      -- плашка «пушка в руках»
	hidebp = false,   -- скрыть стандартную панель предметов Roblox
	hotbar = true,    -- свой хотбар с иконками (стандартная панель Roblox прячется)
	uiscale = 100,    -- масштаб интерфейса, %
	ptrans = 6,       -- прозрачность панели меню, %
	mapspeed = 100,   -- скорость движения карты пальцем, %
	inertia = true,   -- инерция карты
	grid = true,      -- сетка с координатами
	cross = true,     -- прицел на карте
	labels = true,    -- подписи точек на карте
	startzoom = 220,  -- стартовая высота камеры карты
	maxzoom = 3000,   -- максимальный отъезд карты
	sideicons = false, -- старые иконки пушки/фляги справа (убраны в v6)
	gunskin = "rick", -- скин пушки: rick / morty
	omega = false,   -- омега-бомба включена
	gunsize = 100,   -- размер пушки в руках, % (30–300)
	cgcode = "",      -- код своей модели пушки (МЕНЮ ▸ СКИН ▸ ＋)
	cgx = 0, cgy = 6, cgz = -8, -- сдвиг своей модели относительно руки, в 0.1 студа
	cgrx = 0, cgry = 0, cgrz = 0, -- поворот своей модели, градусы
	cgsize = 100,    -- размер своей модели, % (100 = длина 3 студа)
}
local SPEEDS = { 1.2, 2.6, 4.5 }
local SPEED_NAMES = { "Быстро", "Норма", "Долго" }

local PAL = {
	panel = Color3.fromRGB(9, 14, 22),
	panel2 = Color3.fromRGB(17, 27, 41),
	green = Color3.fromRGB(46, 242, 140),
	cyan = Color3.fromRGB(0, 224, 255),
	cream = Color3.fromRGB(12, 20, 32), -- фон полей ввода
	yellow = Color3.fromRGB(255, 190, 40),
	red = Color3.fromRGB(255, 72, 96),
	slate = Color3.fromRGB(26, 40, 60),
	ink = Color3.fromRGB(4, 10, 16),
	white = Color3.fromRGB(226, 240, 250),
	muted = Color3.fromRGB(120, 150, 175),
	edge = Color3.fromRGB(0, 150, 185),
}

----------------------------------------------------------------------
-- ДАННЫЕ + СОХРАНЕНИЕ
----------------------------------------------------------------------
local data = { points = {}, recent = {}, settings = {}, places = {}, ach = {} }
local FILE = "PortalGun_v1.json"
local saveRemote = ReplicatedStorage:FindFirstChild("PortalGunSave") or ReplicatedStorage:WaitForChild("PortalGunSave", 3)
if saveRemote and not saveRemote:IsA("RemoteFunction") then
	warn("[PortalGun] PortalGunSave найден, но это не RemoteFunction — серверное сохранение отключено")
	saveRemote = nil
end
local hasFiles = type(writefile) == "function" and type(readfile) == "function" and type(isfile) == "function"

local function S(k)
	local v = data.settings[k]
	if v == nil then return DEFAULTS[k] end
	return v
end

do -- загрузка
	local raw
	if saveRemote then
		-- InvokeServer мог бы ждать ответа вечно (если на сервере нет обработчика) — ждём максимум 4 сек
		local done = false
		task.spawn(function()
			local ok, res = pcall(function() return saveRemote:InvokeServer("load") end)
			if ok and type(res) == "string" then raw = res end
			done = true
		end)
		local t0 = os.clock()
		while not done and os.clock() - t0 < 4 do task.wait(0.05) end
		if not done then
			warn("[PortalGun] PortalGunSave не отвечает — серверное сохранение отключено в этой сессии")
			saveRemote = nil
			raw = nil
		end
	end
	if not raw and hasFiles then
		local ok, res = pcall(function()
			if isfile(FILE) then return readfile(FILE) end
		end)
		if ok and type(res) == "string" then raw = res end
	end
	if raw then
		local ok, t = pcall(function() return HttpService:JSONDecode(raw) end)
		if ok and type(t) == "table" then
			data.points = type(t.points) == "table" and t.points or {}
			data.recent = type(t.recent) == "table" and t.recent or {}
			data.settings = type(t.settings) == "table" and t.settings or {}
			data.places = type(t.places) == "table" and t.places or {}
			data.ach = type(t.ach) == "table" and t.ach or {}
		end
	end
end

local saveQueued = false
local function persist()
	if saveQueued then return end
	saveQueued = true
	task.delay(1.2, function()
		saveQueued = false
		local ok, raw = pcall(function() return HttpService:JSONEncode(data) end)
		if not ok then return end
		if saveRemote then pcall(function() saveRemote:InvokeServer("save", raw) end) end
		if hasFiles then pcall(writefile, FILE, raw) end
	end)
end

----------------------------------------------------------------------
-- ОБЩИЕ ПОМОЩНИКИ
----------------------------------------------------------------------
local target = nil -- Vector3: куда летим (в тех же координатах, что и HUD)
local gunEquipped = false
local busy = false
local hh = 3 -- высота HumanoidRootPart над полом

local openMenu, closeMenu, openMap, closeMap, fire, toast, setTarget, map

local function theme() return THEMES[S("theme")] or THEMES[1] end

local function getChar()
	local c = lp.Character
	local hrp = c and c:FindFirstChild("HumanoidRootPart")
	local hum = c and c:FindFirstChildOfClass("Humanoid")
	if hrp and hum and hum.Health > 0 then return c, hrp, hum end
end

local function numstr(n)
	local s = string.format("%.1f", n)
	s = s:gsub("%.0$", "")
	return s
end
local function fmt(v)
	return string.format("%d, %d, %d", math.floor(v.X + 0.5), math.floor(v.Y + 0.5), math.floor(v.Z + 0.5))
end

local function new(class, props, parent)
	local o = Instance.new(class)
	for k, v in pairs(props) do o[k] = v end
	if parent then o.Parent = parent end
	return o
end
local function round(o, r)
	new("UICorner", { CornerRadius = UDim.new(0, math.max(2, math.floor((r or 12) * 0.45))) }, o)
	return o
end
local function stroke(o, color, th)
	return new("UIStroke", { Color = color or PAL.edge, Thickness = math.min(th or 1.5, 2), ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, o)
end
local function button(parent, text, bg, fg, props)
	local b = new("TextButton", {
		Text = text, Font = Enum.Font.Code, TextSize = 15, TextColor3 = fg or PAL.ink,
		BackgroundColor3 = bg, BorderSizePixel = 0, AutoButtonColor = true, TextWrapped = true,
		Size = UDim2.new(1, 0, 0, 44),
	})
	if props then for k, v in pairs(props) do b[k] = v end end
	round(b, 10)
	b.Parent = parent
	return b
end
local function row(parent, h)
	return new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, h), LayoutOrder = #parent:GetChildren() }, parent)
end
local function lbl(parent, text, size, color, h, align)
	return new("TextLabel", {
		BackgroundTransparency = 1, Text = text, TextSize = size, TextColor3 = color, Font = Enum.Font.RobotoMono,
		TextXAlignment = align or Enum.TextXAlignment.Left, TextWrapped = true,
		Size = UDim2.new(1, 0, 0, h), LayoutOrder = #parent:GetChildren(),
	}, parent)
end
local function scroller(parent)
	local s = new("ScrollingFrame", {
		BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.fromScale(1, 1), CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollBarThickness = 6, ScrollBarImageColor3 = PAL.edge,
		ScrollingDirection = Enum.ScrollingDirection.Y, Visible = false,
	}, parent)
	new("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder }, s)
	new("UIPadding", { PaddingRight = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6) }, s)
	return s
end
local function isPress(input)
	return input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1
end
-- кнопка, которую можно держать (повтор действия)
local function holdButton(b, fn, interval)
	local down, token = false, 0
	b.InputBegan:Connect(function(input)
		if not isPress(input) then return end
		down = true
		token = token + 1
		local my = token
		fn()
		task.delay(0.4, function()
			while down and token == my do
				fn()
				task.wait(interval or 0.06)
			end
		end)
	end)
	UIS.InputEnded:Connect(function(input)
		if isPress(input) then down = false end
	end)
end

----------------------------------------------------------------------
-- ИНТЕРФЕЙС: КОРЕНЬ, HUD, КНОПКИ, ТОСТЫ
----------------------------------------------------------------------
local function mkGui(name, order, insets, topPad)
	local g = new("ScreenGui", {
		Name = name, ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = order,
		IgnoreGuiInset = (insets == Enum.ScreenInsets.None),
	})
	pcall(function() g.ScreenInsets = insets end)
	g.Parent = pgui
	local r = new("Frame", { Name = "Root", BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1) }, g)
	local sc = new("UIScale", {}, r)
	local pad = topPad and new("UIPadding", {}, r) or nil -- отступ под верхнюю панель Roblox
	local function rescale()
		local ab = g.AbsoluteSize
		local s = math.clamp(math.min(ab.X, ab.Y) / 520, 0.6, 1.4) * S("uiscale") / 100
		sc.Scale = s
		r.Size = UDim2.fromScale(1 / s, 1 / s)
		if pad then
			local inset = 0
			pcall(function() inset = game:GetService("GuiService"):GetGuiInset().Y end)
			pad.PaddingTop = UDim.new(0, inset / s)
		end
	end
	rescale()
	g:GetPropertyChangedSignal("AbsoluteSize"):Connect(rescale)
	return g, r, rescale
end
-- gui: HUD и кнопка (с учётом верхней панели Roblox); menuGui: меню и карта строго по центру всего экрана
local gui, root, rescale1 = mkGui("PortalGunUI", 50, Enum.ScreenInsets.None, true)
local menuGui, root2, rescale2 = mkGui("PortalGunMenu", 60, Enum.ScreenInsets.None)
local function rescaleAll() rescale1() rescale2() end

local fxGui = new("ScreenGui", { Name = "PortalGunFX", ResetOnSpawn = false, IgnoreGuiInset = true, DisplayOrder = 100, ZIndexBehavior = Enum.ZIndexBehavior.Sibling })
pcall(function() fxGui.ScreenInsets = Enum.ScreenInsets.None end)
fxGui.Parent = pgui

__boot("◢ PortalGun v6: строю интерфейс...")
-- HUD: координаты слева сверху (всегда)
local hud = new("Frame", { Name = "HUD", BackgroundColor3 = PAL.panel, BackgroundTransparency = 0.2, Position = UDim2.fromOffset(8, 6), Size = UDim2.fromOffset(290, 30) }, root)
round(hud, 10); stroke(hud, PAL.edge, 2)
local hudPos = new("TextLabel", {
	BackgroundTransparency = 1, Font = Enum.Font.RobotoMono, TextSize = 13, TextColor3 = PAL.white,
	TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.fromOffset(10, 0), Size = UDim2.new(1, -14, 0, 30), Text = "X 0   Y 0   Z 0",
}, hud)
local hudTgt = new("TextLabel", {
	BackgroundTransparency = 1, Font = Enum.Font.RobotoMono, TextSize = 12, TextColor3 = PAL.yellow,
	TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.fromOffset(10, 26), Size = UDim2.new(1, -14, 0, 16), Text = "", Visible = false,
}, hud)

local lastHud, frames = 0, 0
RunService.Heartbeat:Connect(function()
	frames += 1
	local now = os.clock()
	if now - lastHud < 0.1 then return end
	local fps = math.floor(frames / (now - lastHud) + 0.5)
	frames = 0
	lastHud = now
	hud.Visible = S("hud") and true or false
	local _, hrp = getChar()
	if hrp then
		local p = hrp.Position
		hudPos.Text = string.format("X %.1f  Y %.1f  Z %.1f", p.X, p.Y, p.Z) .. (S("fps") and ("  " .. fps .. "fps") or "")
	end
	if target then
		hudTgt.Visible = true
		hudTgt.Text = "→ цель: " .. fmt(target)
		hud.Size = UDim2.fromOffset(290, 48)
	else
		hudTgt.Visible = false
		hud.Size = UDim2.fromOffset(290, 30)
	end
end)

-- плашка «Пушка: в руках»
local chip = new("TextLabel", {
	Text = "◢ PORTAL GUN: В РУКАХ", Font = Enum.Font.RobotoMono, TextSize = 12, TextColor3 = PAL.green,
	BackgroundColor3 = PAL.panel, AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -92),
	Size = UDim2.fromOffset(230, 26), Visible = false,
}, root)
round(chip, 13); stroke(chip, PAL.green, 1)

-- кнопка «МЕНЮ» справа (видна, когда пушка в руках)
local menuBtn = button(root, "◢ МЕНЮ", PAL.yellow, PAL.ink, {
	TextSize = 15, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -10, 0.45, 0), Size = UDim2.fromOffset(104, 50), Visible = false,
})
stroke(menuBtn, Color3.fromRGB(120, 90, 10), 1.5)

-- кнопка-иконка «пушка»: взять / убрать пушку (работает, даже если игра скрыла хотбар); подсвечена зелёным, когда пушка в руках
local gunBtn = button(root, "", PAL.slate, PAL.ink, {
	TextSize = 14, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -10, 0.45, -69), Size = UDim2.fromOffset(72, 72), ClipsDescendants = true,
})
stroke(gunBtn, Color3.fromRGB(20, 120, 70), 1.5)

-- кнопка-иконка «фляга»: взять флягу Рика / сделать глоток; подсвечена зелёным, когда фляга в руках
local flaskBtn = button(root, "", PAL.slate, PAL.ink, {
	TextSize = 14, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -10, 0.45, 69), Size = UDim2.fromOffset(72, 72), ClipsDescendants = true,
})
stroke(flaskBtn, Color3.fromRGB(70, 150, 60), 1.5)

-- всплывающие подсказки
local toastLbl = new("TextLabel", {
	BackgroundColor3 = PAL.panel, TextColor3 = PAL.white, Font = Enum.Font.RobotoMono, TextSize = 14, Text = "",
	AutomaticSize = Enum.AutomaticSize.XY, AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -104),
	Size = UDim2.fromOffset(0, 0), Visible = false, ZIndex = 30, TextWrapped = true,
}, root2)
toastLbl.Parent = nil
round(toastLbl, 10); stroke(toastLbl, PAL.yellow, 1.5)
new("UIPadding", { PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14), PaddingTop = UDim.new(0, 8), PaddingBottom = UDim.new(0, 8) }, toastLbl)
new("UISizeConstraint", { MaxSize = Vector2.new(360, 200) }, toastLbl)
local toastToken = 0
function toast(msg, sec) end

-- пока портал ждёт: только кнопка «закрыть» (входить нужно самому, коснувшись портала)
local pendAction = nil
local pendFrame = new("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -130), Size = UDim2.fromOffset(190, 46), Visible = false, ZIndex = 20 }, root2)
local bCancelP = button(pendFrame, "✕ ЗАКРЫТЬ ПОРТАЛ", PAL.red, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 13, ZIndex = 20 })
bCancelP.Activated:Connect(function() pendAction = "cancel" end)

local function refreshGunUI()
	local show = gunEquipped and not (map and map.active)
	chip.Visible = show and S("chip")
	menuBtn.Visible = show
	gunBtn.Visible = (S("sideicons") and not (map and map.active)) and true or false
	flaskBtn.Visible = gunBtn.Visible
	gunBtn.BackgroundColor3 = gunEquipped and PAL.green or PAL.slate
end

----------------------------------------------------------------------
-- ЗАСТАВКА ПЕРЕХОДА (вихрь, как в видео)
----------------------------------------------------------------------
local trans = new("CanvasGroup", {
	Name = "Transition", BackgroundColor3 = Color3.fromRGB(18, 10, 4), Size = UDim2.fromScale(1, 1),
	Visible = false, GroupTransparency = 1, Active = true,
}, fxGui)
local swirl = new("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.4), Size = UDim2.fromOffset(320, 320) }, trans)
local rings = {}
local function mkRing(scale, thick)
	local f = new("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromScale(scale, scale) }, swirl)
	new("UICorner", { CornerRadius = UDim.new(0.5, 0) }, f)
	local st = new("UIStroke", { Thickness = thick, Color = Color3.new(1, 1, 1) }, f)
	new("UIGradient", {
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.55, 0.88), NumberSequenceKeypoint.new(1, 1),
		}),
	}, st)
	rings[#rings + 1] = { f = f, st = st }
	return f
end
mkRing(1, 18); mkRing(0.76, 14); mkRing(0.52, 10); mkRing(0.28, 7)
local orbs = {}
for i = 1, 16 do
	local o = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(10 + (i % 4) * 5, 10 + (i % 4) * 5), BackgroundColor3 = Color3.new(1, 1, 1) }, swirl)
	new("UICorner", { CornerRadius = UDim.new(0.5, 0) }, o)
	orbs[i] = o
end
local tCoord = new("TextLabel", {
	BackgroundTransparency = 1, Font = Enum.Font.Code, TextSize = 34, TextColor3 = PAL.white, Text = "",
	AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.72), Size = UDim2.new(0.94, 0, 0, 46),
}, trans)
new("UIStroke", { Color = Color3.fromRGB(40, 20, 0), Thickness = 3 }, tCoord)
tCoord.TextScaled = true
new("UITextSizeConstraint", { MaxTextSize = 34, MinTextSize = 12 }, tCoord)
local barBg = new("Frame", { BackgroundColor3 = Color3.fromRGB(60, 40, 20), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.79), Size = UDim2.new(0.7, 0, 0, 14) }, trans)
round(barBg, 7)
new("UISizeConstraint", { MaxSize = Vector2.new(380, 14) }, barBg)
local barFill = new("Frame", { BackgroundColor3 = Color3.new(1, 1, 1), Size = UDim2.fromScale(0, 1) }, barBg)
round(barFill, 7)
local tStage = new("TextLabel", {
	BackgroundTransparency = 1, Font = Enum.Font.RobotoMono, TextSize = 16, TextColor3 = PAL.white, Text = "",
	AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.84), Size = UDim2.new(0.94, 0, 0, 24),
}, trans)

local function runTransition(duration, dest, jumpFn, label)
	local th = theme()
	local vs = fxGui.AbsoluteSize
	local S0 = math.clamp(math.min(vs.X, vs.Y) * 0.7, 200, 460)
	swirl.Size = UDim2.fromOffset(S0, S0)
	for i, r in ipairs(rings) do r.st.Color = (i % 2 == 1) and th.c1 or th.c2 end
	for i, o in ipairs(orbs) do o.BackgroundColor3 = (i % 2 == 0) and th.c1 or th.c2 end
	barFill.BackgroundColor3 = th.c1
	tCoord.Text = label or string.format("X %d   Y %d   Z %d", math.floor(dest.X + 0.5), math.floor(dest.Y + 0.5), math.floor(dest.Z + 0.5))
	tStage.Text = "Открываю портал..."
	barFill.Size = UDim2.fromScale(0, 1)
	trans.Visible = true
	TweenService:Create(trans, TweenInfo.new(0.25), { GroupTransparency = 0 }):Play()

	local t0 = os.clock()
	local conn = RunService.RenderStepped:Connect(function()
		local t = os.clock() - t0
		for i, r in ipairs(rings) do
			r.f.Rotation = t * (110 + i * 90) * ((i % 2 == 0) and -1 or 1)
		end
		for i, o in ipairs(orbs) do
			local a = t * (1.2 + (i % 3) * 0.5) + i * (math.pi * 2 / #orbs)
			local rad = S0 * (0.20 + 0.28 * (0.5 + 0.5 * math.sin(t * 1.5 + i)))
			o.Position = UDim2.new(0.5, math.cos(a) * rad, 0.5, math.sin(a) * rad)
		end
	end)
	task.wait(0.25)

	local stages = { "Стабилизация портала...", "Синхронизация измерений...", "Калибровка координат..." }
	local start = os.clock()
	local jumped = false
	while true do
		local a = (os.clock() - start) / duration
		if a >= 1 then break end
		barFill.Size = UDim2.fromScale(a, 1)
		tStage.Text = stages[math.min(#stages, math.floor(a * #stages) + 1)]
		if not jumped and a > 0.85 then
			jumped = true
			jumpFn()
		end
		task.wait()
	end
	barFill.Size = UDim2.fromScale(1, 1)
	if not jumped then jumpFn() end
	task.wait(0.15)
	TweenService:Create(trans, TweenInfo.new(0.4), { GroupTransparency = 1 }):Play()
	task.wait(0.4)
	conn:Disconnect()
	trans.Visible = false
end

----------------------------------------------------------------------
-- ПОРТАЛЫ В МИРЕ + ВЫСТРЕЛ
----------------------------------------------------------------------
local portals = {}

do -- прогресс и награды
	local A = {}
	portals.Ach = A
	A.listeners = {}
	A.goals = { near = 15, bomb = 20, use = 100 }
	A.of = { near = "morty", bomb = "prime", use = "rick" }
	A.keys = { "morty", "prime", "rick" }
	local function st()
		if type(data.ach) ~= "table" then data.ach = {} end
		if type(data.ach.c) ~= "table" then data.ach.c = {} end
		if type(data.ach.u) ~= "table" then data.ach.u = {} end
		return data.ach
	end
	local function notify()
		for _, f in ipairs(A.listeners) do pcall(f) end
	end
	function A.unlocked(k) return st().u[k] == true end
	function A.add(c, n)
		local s = st()
		s.c[c] = (s.c[c] or 0) + (n or 1)
		local k = A.of[c]
		if k and not s.u[k] and s.c[c] >= A.goals[c] then
			s.u[k] = true
			notify()
		end
		persist()
	end
	function A.unlockAll()
		local s = st()
		for _, k in ipairs(A.keys) do s.u[k] = true end
		persist()
		notify()
	end
end

do -- одежда Морти / Рика (красится локально, только у тебя на экране)
	local O = {}
	portals.Outfit = O
	local function C(r, g, b) return Color3.fromRGB(r, g, b) end
	local SETS = {
		morty = {
			UpperTorso = C(246, 214, 58), Torso = C(246, 214, 58),
			LeftUpperArm = C(246, 214, 58), RightUpperArm = C(246, 214, 58),
			LowerTorso = C(52, 98, 176),
			LeftUpperLeg = C(52, 98, 176), LeftLowerLeg = C(52, 98, 176),
			RightUpperLeg = C(52, 98, 176), RightLowerLeg = C(52, 98, 176),
			["Left Leg"] = C(52, 98, 176), ["Right Leg"] = C(52, 98, 176),
			LeftFoot = C(238, 238, 238), RightFoot = C(238, 238, 238),
		},
		rick = {
			UpperTorso = C(236, 240, 244), LowerTorso = C(236, 240, 244), Torso = C(236, 240, 244),
			LeftUpperArm = C(236, 240, 244), LeftLowerArm = C(236, 240, 244),
			RightUpperArm = C(236, 240, 244), RightLowerArm = C(236, 240, 244),
			["Left Arm"] = C(236, 240, 244), ["Right Arm"] = C(236, 240, 244),
			LeftUpperLeg = C(112, 92, 64), LeftLowerLeg = C(112, 92, 64),
			RightUpperLeg = C(112, 92, 64), RightLowerLeg = C(112, 92, 64),
			["Left Leg"] = C(112, 92, 64), ["Right Leg"] = C(112, 92, 64),
			LeftFoot = C(40, 34, 30), RightFoot = C(40, 34, 30),
		},
	}
	local OUT = { kidmorty = "morty", rickplus = "rick" }
	local saved
	local function restore()
		if not saved then return end
		for part, col in pairs(saved.parts) do
			if part.Parent then part.Color = col end
		end
		for _, e in ipairs(saved.cloth) do
			if e.i and e.p and e.p.Parent then e.i.Parent = e.p end
		end
		saved = nil
	end
	function O.apply(skin)
		restore()
		local kind = OUT[skin]
		if not kind or not portals.Ach.unlocked(kind) then return end
		local char = lp.Character
		if not char then return end
		saved = { parts = {}, cloth = {} }
		for _, d in ipairs(char:GetChildren()) do
			if d:IsA("Shirt") or d:IsA("Pants") or d:IsA("ShirtGraphic") then
				saved.cloth[#saved.cloth + 1] = { i = d, p = char }
				d.Parent = nil
			end
		end
		for name, col in pairs(SETS[kind]) do
			local part = char:FindFirstChild(name)
			if part and part:IsA("BasePart") then
				saved.parts[part] = part.Color
				part.Color = col
			end
		end
	end
	lp.CharacterAdded:Connect(function() saved = nil end)
end

local function spawnPortal(pos, normal, w, h, opts)
	opts = opts or {}
	local sc = opts.sc or 1          -- множитель толщины/частиц (для большого портала в небе)
	local openT = opts.openT or 0.5  -- время раскрытия
	local th = theme()
	local cf = CFrame.lookAt(pos, pos + normal, opts.up or Vector3.yAxis) -- -Z смотрит от поверхности
	local base = cf * CFrame.Angles(0, math.pi / 2, 0) -- X = ось портала, Y = вверх, Z = вправо
	local model = new("Model", { Name = "Portal" })
	local parts = {}
	local tiny = Vector3.new(0.05, 0.05, 0.05)

	local function cyl(thick, sy, sz, color, tr, mat)
		local p = new("Part", {
			Shape = Enum.PartType.Cylinder, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false,
			CastShadow = false, Material = mat, Color = color, Transparency = tr, Size = tiny, CFrame = base,
		}, model)
		parts[#parts + 1] = { p = p, size = Vector3.new(thick, sy, sz) }
		return p
	end
	cyl(0.25 * sc, h * 1.14, w * 1.14, th.c1, 0.78, Enum.Material.Neon) -- ореол
	cyl(0.35 * sc, h, w, th.c1, 0, Enum.Material.Neon)
	cyl(0.5 * sc, h * 0.84, w * 0.84, th.c1:Lerp(Color3.new(0, 0, 0), 0.78), 0.05, Enum.Material.SmoothPlastic)
	local core = cyl(0.55 * sc, h * 0.6, w * 0.6, th.c2, 0.5, Enum.Material.Neon)
	new("PointLight", { Color = th.c1, Range = math.min(60, 18 * sc), Brightness = 2.5 }, core)
	new("ParticleEmitter", {
		Rate = 50 * math.min(sc, 2), Lifetime = NumberRange.new(0.6, 1.2), Speed = NumberRange.new(1 * sc, 4 * sc), SpreadAngle = Vector2.new(35, 35),
		Color = ColorSequence.new(th.c1, th.c2), LightEmission = 1, EmissionDirection = Enum.NormalId.Right,
		Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.4 * sc), NumberSequenceKeypoint.new(1, 0) }),
		Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.15), NumberSequenceKeypoint.new(1, 1) }),
	}, core)

	local orbList = {}
	for i = 1, 24 do
		local o = new("Part", {
			Shape = Enum.PartType.Ball, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
			Material = Enum.Material.Neon, Color = (i % 2 == 0) and th.c2 or th.c1, Size = Vector3.new(0.5 * sc, 0.5 * sc, 0.5 * sc), CFrame = base,
		}, model)
		orbList[i] = o
	end
	model.Parent = fx

	for _, e in ipairs(parts) do
		TweenService:Create(e.p, TweenInfo.new(openT, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = e.size }):Play()
	end

	local t0 = os.clock()
	local P = { model = model, base = base, w = w, h = h, parts = parts, closing = false }
	P.conn = RunService.Heartbeat:Connect(function()
		local t = os.clock() - t0
		local open = math.clamp(t / openT, 0, 1)
		for i, o in ipairs(orbList) do
			local a = t * 2.4 * ((i % 2 == 0) and 1 or -0.7) + i * (math.pi * 2 / #orbList)
			local kk = ((i % 2 == 0) and 0.46 or 0.32) + 0.04 * math.sin(t * 3 + i)
			o.CFrame = base * CFrame.new(0.45 * sc, math.sin(a) * h * kk * open, math.cos(a) * w * kk * open)
		end
		core.Transparency = 0.45 + 0.15 * math.sin(t * 5)
	end)
	if not opts.untracked then portals[#portals + 1] = P end
	return P
end

local function closePortal(P)
	if P.closing then return end
	P.closing = true
	for i, v in ipairs(portals) do
		if v == P then table.remove(portals, i) break end
	end
	for _, e in ipairs(P.parts) do
		TweenService:Create(e.p, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = Vector3.new(0.05, 0.05, 0.05) }):Play()
	end
	task.delay(0.4, function()
		P.conn:Disconnect()
		P.model:Destroy()
	end)
end
local function closeAllPortals()
	local copy = table.clone(portals)
	for _, P in ipairs(copy) do closePortal(P) end
end

-- «коснулся портала»: тело (корпус или голова) вошло в овал портала
local function portalTouch(P, char)
	local hrp = char and char:FindFirstChild("HumanoidRootPart")
	if not hrp then return false end
	local pts = { hrp.Position }
	local head = char:FindFirstChild("Head")
	if head then pts[2] = head.Position end
	for _, pos in ipairs(pts) do
		local rel = P.base:PointToObjectSpace(pos)
		local dp = P.depth or 1.6
		if rel.X > -dp and rel.X < dp then
			local ny, nz = rel.Y / (P.h / 2 + 0.5), rel.Z / (P.w / 2 + 0.5)
			if ny * ny + nz * nz <= 1 then return true end
		end
	end
	return false
end

local function rayParams(char)
	local list = { fx }
	for _, pl in ipairs(Players:GetPlayers()) do
		if pl.Character then list[#list + 1] = pl.Character end
	end
	local p = RaycastParams.new()
	p.FilterType = Enum.RaycastFilterType.Exclude
	p.FilterDescendantsInstances = list
	return p
end

-- куда встанет входной портал: на стене, если смотришь в стену; иначе в радиусе
local function computePlacement()
	local char, hrp = getChar()
	local R = S("radius")
	local h = S("size")
	local w = h * 0.7
	local params = rayParams(char)
	local origin = hrp.Position + Vector3.new(0, 1.5, 0)
	local dir = workspace.CurrentCamera.CFrame.LookVector
	local function isWall(r) return r and math.abs(r.Normal.Y) < 0.55 end

	local res = workspace:Raycast(origin, dir * R, params)
	if not isWall(res) then
		local flat = Vector3.new(dir.X, 0, dir.Z)
		if flat.Magnitude < 0.1 then
			local lv = hrp.CFrame.LookVector
			flat = Vector3.new(lv.X, 0, lv.Z)
		end
		flat = flat.Unit
		local res2 = workspace:Raycast(origin, flat * R, params)
		if isWall(res2) then
			res = res2
		else
			local dist = R
			if res and res.Distance < R then
				local hv = res.Position - origin
				dist = math.clamp(Vector3.new(hv.X, 0, hv.Z).Magnitude, 4, R)
			end
			local p2 = origin + flat * dist
			local gr = workspace:Raycast(p2 + Vector3.new(0, 25, 0), Vector3.new(0, -120, 0), params)
			local gy = gr and gr.Position.Y or (hrp.Position.Y - hh)
			return { pos = Vector3.new(p2.X, gy + h / 2 + 0.1, p2.Z), normal = -flat, w = w, h = h, wall = false }
		end
	end
	-- стена
	local n = Vector3.new(res.Normal.X, 0, res.Normal.Z)
	n = n.Magnitude > 0.01 and n.Unit or -dir
	local p = res.Position + n * 0.2
	local gr = workspace:Raycast(p + n * 1.5, Vector3.new(0, -14, 0), params)
	local cy = gr and (gr.Position.Y + h / 2 + 0.05) or p.Y
	return { pos = Vector3.new(p.X, cy, p.Z), normal = n, w = w, h = h, wall = true }
end

local toolRef -- ссылка на пушку (для дула)

local function shootFX(fromPos, toPos)
	local th = theme()
	local dist = (toPos - fromPos).Magnitude
	if dist < 0.5 then return end
	local tracer = new("Part", {
		Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
		Material = Enum.Material.Neon, Color = th.c1, Transparency = 0.15, Size = Vector3.new(0.2, 0.2, math.max(0.1, dist)),
		CFrame = CFrame.lookAt((fromPos + toPos) / 2, toPos),
	}, fx)
	TweenService:Create(tracer, TweenInfo.new(0.4), { Transparency = 1, Size = Vector3.new(0.02, 0.02, math.max(0.1, dist)) }):Play()
	Debris:AddItem(tracer, 0.6)
	local ball = new("Part", {
		Shape = Enum.PartType.Ball, Size = Vector3.new(1.1, 1.1, 1.1), Material = Enum.Material.Neon, Color = th.c2,
		Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false, Position = fromPos,
	}, fx)
	new("PointLight", { Color = th.c1, Range = 16, Brightness = 3 }, ball)
	local t = math.max(0.12, dist / 170)
	local tw = TweenService:Create(ball, TweenInfo.new(t, Enum.EasingStyle.Linear), { Position = toPos })
	tw:Play()
	task.wait(t)
	ball:Destroy()
end

local function addRecent(v)
	local key = fmt(v)
	for i, r in ipairs(data.recent) do
		if r.k == key then table.remove(data.recent, i) break end
	end
	table.insert(data.recent, 1, { k = key, x = v.X, y = v.Y, z = v.Z })
	while #data.recent > 8 do table.remove(data.recent) end
	persist()
end

-- анимация входа в портал: тебя затягивает в центр, закручивает и растворяет; возвращает функцию «вернуть как было»
local function enterPortalAnim(P)
	local char, hrp = getChar()
	if not (char and hrp and P and P.base) then return nil end
	local parts = {}
	for _, d in ipairs(char:GetDescendants()) do
		if d:IsA("BasePart") then parts[#parts + 1] = d end
	end
	local function restore()
		for _, p in ipairs(parts) do
			if p.Parent then p.LocalTransparencyModifier = 0 end
		end
		if hrp.Parent then hrp.Anchored = false end
	end
	local ok = pcall(function()
		local startCF = hrp.CFrame
		local rot = startCF - startCF.Position
		local center = P.base.Position
		hrp.Anchored = true
		hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		local dur = 0.9
		local t0 = os.clock()
		while true do
			local a = (os.clock() - t0) / dur
			if a >= 1 or not hrp.Parent then break end
			local e = a * a * (3 - 2 * a)
			local pos = startCF.Position:Lerp(center, e)
			char:PivotTo(CFrame.new(pos) * CFrame.Angles(0, e * math.pi * 5, 0) * rot)
			for _, p in ipairs(parts) do
				if p.Parent then p.LocalTransparencyModifier = math.clamp(e * 1.15, 0, 1) end
			end
			task.wait()
		end
		for _, p in ipairs(parts) do
			if p.Parent then p.LocalTransparencyModifier = 1 end
		end
	end)
	if not ok then restore() return nil end
	return restore
end

local function doTeleport(dest)
	local char, hrp, hum = getChar()
	if not hrp then return end
	if S("snap") then
		local gr = workspace:Raycast(dest + Vector3.new(0, 4, 0), Vector3.new(0, -400, 0), rayParams(char))
		if gr then dest = Vector3.new(dest.X, gr.Position.Y + hh + 0.1, dest.Z) end
	end
	local duration = SPEEDS[S("speed")] or 2.6
	local lv = hrp.CFrame.LookVector
	local flat = Vector3.new(lv.X, 0, lv.Z)
	if flat.Magnitude < 0.1 then flat = Vector3.new(0, 0, -1) end
	flat = flat.Unit
	local function jump()
		local c2, h2 = getChar()
		if not h2 then return end
		c2:PivotTo(CFrame.lookAt(dest, dest + flat))
		h2.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
	end
	if S("anim") then
		runTransition(duration, dest, jump)
	else
		jump()
	end
	-- выходной портал позади, плавно закрывается
	local gy = dest.Y - hh
	local P = spawnPortal(Vector3.new(dest.X, gy + S("size") / 2 + 0.1, dest.Z) - flat * 4, flat, S("size") * 0.7, S("size"))
	task.delay(S("life"), function() closePortal(P) end)
end

function fire()
	if busy then toast("Портал уже работает") return end
	if map and map.active then return end
	local char, hrp = getChar()
	if not hrp then return end
	if not target then
		toast("Сначала выбери точку: открой меню → «Выбрать на карте»", 3)
		return
	end
	busy = true
	closeMenu()
	local dest = target
	task.spawn(function()
		local ok, err = pcall(function()
			local sapi = portals.ShipApi
			local inShip = sapi ~= nil and sapi.isRiding()
			local pl = inShip and sapi.bigPlacement(rayParams(char)) or computePlacement()
			local tip = toolRef and toolRef:FindFirstChild("Tip")
			local from = tip and tip.Position or (hrp.Position + Vector3.new(0, 1.5, 0))
			if S("tracer") then shootFX(from, pl.pos) end
			local P = spawnPortal(pl.pos, pl.normal, pl.w, pl.h, pl.opts)
			if pl.depth then P.depth = pl.depth end
			addRecent(dest)
			local entered = false
			toast("Коснись портала, чтобы войти", 4)
			pendAction = nil
			pendFrame.Visible = true
			local t0 = os.clock()
			while os.clock() - t0 < 180 and not P.closing do
				local c2, h2 = getChar()
				if not h2 then break end
				if pendAction == "cancel" then break end
				if portalTouch(P, c2) then entered = true break end
				task.wait(0.05)
			end
			pendFrame.Visible = false
			pendAction = nil
			if entered and getChar() then
				pcall(portals.Ach.add, "use")
				if inShip and sapi.isRiding() then
					-- КОРАБЛЬ влетает в большой портал и вылетает в точке назначения
					local okS, errS = pcall(function()
						sapi.flyInto(P.base.Position, 0.9)
						local dur = SPEEDS[S("speed")] or 2.6
						if S("anim") then runTransition(dur, dest, function() sapi.tp(dest) end) else sapi.tp(dest) end
						local sp, fw = sapi.pos(), sapi.forward()
						local EP = spawnPortal(sp - fw * 26, fw, 40, 40, { sc = 2, openT = 0.8 })
						EP.depth = 7
						task.delay(S("life"), function() closePortal(EP) end)
					end)
					if not okS then pcall(sapi.unfreeze); warn("[PortalGun] " .. tostring(errS)) end
				else
					local undo = S("enter") and enterPortalAnim(P) or nil
					local okT, errT = pcall(doTeleport, dest)
					if okT then
						pcall(function()
							local _, h3 = getChar()
							if not h3 then return end
							for _, pl in ipairs(Players:GetPlayers()) do
								local r3 = pl ~= lp and pl.Character and pl.Character:FindFirstChild("HumanoidRootPart")
								if r3 and (r3.Position - h3.Position).Magnitude <= 35 then
									portals.Ach.add("near")
									return
								end
							end
						end)
					end
					if undo then undo() end
					if not okT then warn("[PortalGun] " .. tostring(errT)) end
				end
			end
			closePortal(P)
		end)
		if not ok then warn("[PortalGun] " .. tostring(err)) end
		busy = false
	end)
end

----------------------------------------------------------------------
-- ДОМ ВОТИМС: далеко за картой, строится локально при запуске.
-- Телепорт: МЕНЮ ▸ ★ СОХР. ▸ «ДОМ ВОТИМС» ▸ В ЦЕЛЬ ▸ выстрел. Портал выводит на ДОРОГУ перед домом.
-- v6: мебель переставлена (ничего не перекрывает двери/окна), крыша не лезет в комнаты,
--      все двери (входная, патио, гараж, спальни, ванная, балкон) открываются сами, когда ты рядом.
----------------------------------------------------------------------
do
	local O = Vector3.new(14000, 600, 14000) -- верх земли под домом (далеко за картой)
	local function at(x, y, z) return O + Vector3.new(x, y, z) end
	local SM = { origin = O, spawn = at(56, 3.4, 106), yard = at(56, 0, 106) } -- дорога перед домом
	portals.SMITH = SM

	-- v6: СВОИ КНОПКИ ВЗАИМОДЕЙСТВИЯ вместо стандартных (стеклянная кнопка с клавишей, тап по ней = действие)
	do
		local okPPS, PPS = pcall(function() return game:GetService("ProximityPromptService") end)
		local live = {}
		local function CC(r, g, b) return Color3.fromRGB(r, g, b) end
		local function keyText(pp, it)
			if it == Enum.ProximityPromptInputType.Touch then return "👆" end
			if it == Enum.ProximityPromptInputType.Gamepad then return "A" end
			local ok, str = pcall(function() return UIS:GetStringForKeyCode(pp.KeyboardKeyCode) end)
			if ok and str and str ~= "" then return str end
			return pp.KeyboardKeyCode.Name
		end
		local function hideUI(pp)
			local u = live[pp]
			if not u then return end
			live[pp] = nil
			for _, c in ipairs(u.conns) do pcall(function() c:Disconnect() end) end
			pcall(function()
				TweenService:Create(u.scale, TweenInfo.new(0.14, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Scale = 0.5 }):Play()
				TweenService:Create(u.btn, TweenInfo.new(0.14), { BackgroundTransparency = 1 }):Play()
			end)
			Debris:AddItem(u.gui, 0.2)
		end
		local function showUI(pp, it)
			if not pp:GetAttribute("PGCustom") then return end
			hideUI(pp)
			local part = pp.Parent
			if not (part and part:IsA("BasePart")) then return end
			local g = Instance.new("BillboardGui")
			g.Name = "PGPromptUI"; g.Adornee = part; g.AlwaysOnTop = true; g.LightInfluence = 0
			g.Size = UDim2.fromOffset(260, 70); g.ResetOnSpawn = false; g.Active = true
			local btn = Instance.new("TextButton")
			btn.Name = "Btn"; btn.AnchorPoint = Vector2.new(0.5, 0.5)
			btn.Position = UDim2.new(0.5, 0, 0.5, pp:GetAttribute("PGPx") or 0)
			btn.Size = UDim2.fromOffset(240, 58)
			btn.BackgroundColor3 = CC(12, 22, 20); btn.BackgroundTransparency = 0.1
			btn.AutoButtonColor = false; btn.Text = ""; btn.Active = true; btn.ClipsDescendants = true
			btn.Parent = g
			local cr = Instance.new("UICorner"); cr.CornerRadius = UDim.new(0, 14); cr.Parent = btn
			local st = Instance.new("UIStroke"); st.Color = CC(70, 255, 130); st.Thickness = 2; st.Parent = btn
			local sc = Instance.new("UIScale"); sc.Scale = 0.5; sc.Parent = btn
			local key = Instance.new("TextLabel")
			key.Size = UDim2.fromOffset(40, 40); key.Position = UDim2.fromOffset(9, 9)
			key.BackgroundColor3 = CC(70, 255, 130); key.Text = keyText(pp, it)
			key.Font = Enum.Font.GothamBlack; key.TextSize = 22; key.TextColor3 = CC(8, 24, 14); key.Parent = btn
			local kc = Instance.new("UICorner"); kc.CornerRadius = UDim.new(0, 12); kc.Parent = key
			local act = Instance.new("TextLabel")
			act.BackgroundTransparency = 1; act.Position = UDim2.fromOffset(58, 7); act.Size = UDim2.fromOffset(174, 24)
			act.Font = Enum.Font.GothamBold; act.TextSize = 18; act.TextColor3 = CC(240, 255, 245)
			act.TextXAlignment = Enum.TextXAlignment.Left; act.TextTruncate = Enum.TextTruncate.AtEnd
			act.Text = pp.ActionText; act.Parent = btn
			local obj = Instance.new("TextLabel")
			obj.BackgroundTransparency = 1; obj.Position = UDim2.fromOffset(58, 31); obj.Size = UDim2.fromOffset(174, 18)
			obj.Font = Enum.Font.Gotham; obj.TextSize = 13; obj.TextColor3 = CC(140, 205, 168)
			obj.TextXAlignment = Enum.TextXAlignment.Left; obj.TextTruncate = Enum.TextTruncate.AtEnd
			obj.Text = pp.ObjectText; obj.Parent = btn
			local bar = Instance.new("Frame")
			bar.BackgroundColor3 = CC(70, 255, 130); bar.BorderSizePixel = 0
			bar.Position = UDim2.new(0, 0, 1, -4); bar.Size = UDim2.new(0, 0, 0, 4); bar.Parent = btn
			g.Parent = pgui
			TweenService:Create(sc, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()
			local conns = {}
			local barTw
			conns[#conns + 1] = pp.PromptButtonHoldBegan:Connect(function()
				if barTw then barTw:Cancel() end
				bar.Size = UDim2.new(0, 0, 0, 4)
				if pp.HoldDuration > 0 then
					barTw = TweenService:Create(bar, TweenInfo.new(pp.HoldDuration, Enum.EasingStyle.Linear), { Size = UDim2.new(1, 0, 0, 4) })
					barTw:Play()
				end
				TweenService:Create(btn, TweenInfo.new(0.08), { BackgroundColor3 = CC(24, 58, 42) }):Play()
			end)
			conns[#conns + 1] = pp.PromptButtonHoldEnded:Connect(function()
				if barTw then barTw:Cancel() end
				bar.Size = UDim2.new(0, 0, 0, 4)
				TweenService:Create(btn, TweenInfo.new(0.12), { BackgroundColor3 = CC(12, 22, 20) }):Play()
			end)
			conns[#conns + 1] = pp.Triggered:Connect(function()
				sc.Scale = 1.12
				TweenService:Create(sc, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 }):Play()
			end)
			conns[#conns + 1] = pp.AncestryChanged:Connect(function()
				if not pp.Parent then hideUI(pp) end
			end)
			conns[#conns + 1] = btn.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
					pcall(function() pp:InputHoldBegin() end)
				end
			end)
			conns[#conns + 1] = btn.InputEnded:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
					pcall(function() pp:InputHoldEnd() end)
				end
			end)
			live[pp] = { gui = g, btn = btn, scale = sc, conns = conns }
		end
		if okPPS and PPS then
			local ok1 = pcall(function()
				PPS.PromptShown:Connect(function(pp, it) pcall(showUI, pp, it) end)
				PPS.PromptHidden:Connect(function(pp) pcall(hideUI, pp) end)
			end)
			SM.customOk = ok1
		end
		-- включить свою кнопку для подсказки; px — сдвиг по вертикали в пикселях (чтобы две кнопки не слипались)
		SM.fancyPrompt = function(pp, px)
			if not SM.customOk then return pp end
			pcall(function()
				pp:SetAttribute("PGCustom", true)
				if px then pp:SetAttribute("PGPx", px) end
				pp.Style = Enum.ProximityPromptStyle.Custom
			end)
			return pp
		end
	end

	local okH, errH = pcall(function()
		local old = workspace:FindFirstChild("PortalGunSmithHouse")
		if old then old:Destroy() end
		local folder = Instance.new("Folder")
		folder.Name = "PortalGunSmithHouse"
		local collector = nil -- если задан, новые детали ещё и складываются в этот список (для дверей)
		local function C(r, g, b) return Color3.fromRGB(r, g, b) end
		local MAT = Enum.Material

		local function box(x1, y1, z1, x2, y2, z2, color, mat, tr, nocol)
			local p = Instance.new("Part")
			p.Anchored = true
			p.CanTouch = false
			p.CanCollide = not nocol
			p.Size = Vector3.new(math.max(0.05, math.abs(x2 - x1)), math.max(0.05, math.abs(y2 - y1)), math.max(0.05, math.abs(z2 - z1)))
			p.Position = at((x1 + x2) / 2, (y1 + y2) / 2, (z1 + z2) / 2)
			p.Color = color
			p.Material = mat or MAT.SmoothPlastic
			p.Transparency = tr or 0
			p.TopSurface = Enum.SurfaceType.Smooth
			p.BottomSurface = Enum.SurfaceType.Smooth
			p.Parent = folder
			if collector then collector[#collector + 1] = p end
			return p
		end
		-- вертикальный цилиндр (диаметр d, высота h), низ на высоте y
		local function cyl(cx, y, cz, d, h, color, mat, nocol)
			local p = Instance.new("Part")
			p.Shape = Enum.PartType.Cylinder
			p.Anchored = true; p.CanTouch = false; p.CanCollide = not nocol
			p.Size = Vector3.new(h, d, d)
			p.CFrame = CFrame.new(at(cx, y + h / 2, cz)) * CFrame.Angles(0, 0, math.pi / 2)
			p.Color = color; p.Material = mat or MAT.SmoothPlastic
			p.Parent = folder
			return p
		end
		local function ball(cx, cy, cz, d, color, mat)
			local p = Instance.new("Part")
			p.Shape = Enum.PartType.Ball
			p.Anchored = true; p.CanTouch = false; p.Size = Vector3.new(d, d, d)
			p.Position = at(cx, cy, cz); p.Color = color; p.Material = mat or MAT.SmoothPlastic
			p.Parent = folder
			return p
		end
		-- лампочка в потолке (светится + мягкий свет). y = низ плафона
		local function bulb(x, y, z, col)
			local p = cyl(x, y, z, 2.2, 0.35, C(255, 246, 220), MAT.Neon, true)
			if col then p.Color = col end -- только неон, без света
			return p
		end

		-- ЦВЕТА
		local SIDING, BRICK = C(219, 190, 135), C(158, 64, 48)
		local WHITE, WOOD, DARK = C(246, 244, 238), C(150, 100, 66), C(62, 46, 36)
		local GAR, KIT, LIVW = C(88, 96, 86), C(246, 232, 168), C(230, 211, 165)
		local CREAM, ENTRY, HALLC = C(240, 226, 178), C(232, 216, 170), C(228, 208, 154)
		local RED, GREEND = C(196, 68, 58), C(72, 112, 74)
		local GARP = C(88, 78, 108) -- фиолетовые стены гаража (как на скриншоте)
		local PINK, MGREEN, BJ, BATH = C(240, 160, 188), C(136, 194, 124), C(236, 212, 202), C(205, 228, 236)
		local GLASS = C(172, 216, 240)
		local T, DOOR, H = 0.35, 8.5, 11

		local doorSpecs = {} -- проёмы с дверями (заполняет wall)

		-- СТЕНА (двусторонняя): cm = цвет «минус»-стороны (запад/север), cp = «плюс»-стороны (восток/юг)
		-- brick = "m"/"p": какая сторона наружная (кирпичный низ).
		-- gaps: {от,до} открытый проём, {от,до,"w"} окно, {от,до,"s"} раздвижная дверь,
		--       {от,до,"d",стиль,"e"} дверь (стиль: front/wood/glass/nil; "e" = петли с дальнего края), {от,до,"g"} гаражные ворота
		local function wall(x1, z1, x2, z2, y0, h, gaps, cm, cp, brick)
			cm = cm or WHITE; cp = cp or WHITE
			local alongX = (z1 == z2)
			local plane = alongX and z1 or x1
			local a, b = alongX and x1 or z1, alongX and x2 or z2
			local function sbox(s, e, ya, yb, pm, pp, c, mat, tr)
				if e - s < 0.05 or yb - ya < 0.05 then return end
				if alongX then box(s, ya, z1 + pm, e, yb, z1 + pp, c, mat, tr)
				else box(x1 + pm, ya, s, x1 + pp, yb, e, c, mat, tr) end
			end
			local function seg(s, e, ya, yb)
				sbox(s, e, ya, yb, -T, 0, cm)
				sbox(s, e, ya, yb, 0, T, cp)
			end
			local function brk(s, e)
				if brick == "m" then sbox(s, e, y0, y0 + 2.6, -T - 0.14, -T, BRICK, MAT.Brick)
				elseif brick == "p" then sbox(s, e, y0, y0 + 2.6, T, T + 0.14, BRICK, MAT.Brick) end
			end
			local function base(s, e)
				if brick ~= "m" then sbox(s, e, y0, y0 + 0.6, -T - 0.07, -T, WHITE) end
				if brick ~= "p" then sbox(s, e, y0, y0 + 0.6, T, T + 0.07, WHITE) end
			end
			local function trim(s, e, ya, yb, c) sbox(s, e, ya, yb, -T - 0.09, T + 0.09, c or WHITE) end
			local list = gaps and table.clone(gaps) or {}
			table.sort(list, function(p, q) return p[1] < q[1] end)
			local cur = a
			for _, g in ipairs(list) do
				local g1, g2 = g[1], g[2]
				if g1 > cur then seg(cur, g1, y0, y0 + h); brk(cur, g1); base(cur, g1) end
				if g[3] == "w" then
					seg(g1, g2, y0, y0 + 3.5); seg(g1, g2, y0 + 8, y0 + h); brk(g1, g2)
					sbox(g1, g2, y0 + 3.5, y0 + 8, -0.1, 0.1, GLASS, MAT.Glass, 0.55)
					trim(g1, g1 + 0.3, y0 + 3.3, y0 + 8.2); trim(g2 - 0.3, g2, y0 + 3.3, y0 + 8.2)
					trim(g1 - 0.2, g2 + 0.2, y0 + 3.2, y0 + 3.6); trim(g1, g2, y0 + 7.9, y0 + 8.2)
					trim((g1 + g2) / 2 - 0.12, (g1 + g2) / 2 + 0.12, y0 + 3.5, y0 + 8)
					trim(g1, g2, y0 + 5.6, y0 + 5.9)
				elseif g[3] == "s" then
					seg(g1, g2, y0 + DOOR, y0 + h)
					trim(g1, g1 + 0.3, y0, y0 + DOOR, C(70, 70, 75)); trim(g2 - 0.3, g2, y0, y0 + DOOR, C(70, 70, 75))
					trim(g1, g2, y0 + DOOR - 0.3, y0 + DOOR, C(70, 70, 75))
					doorSpecs[#doorSpecs + 1] = { kind = "s", alongX = alongX, p = plane, g1 = g1, g2 = g2, y0 = y0 }
				else
					seg(g1, g2, y0 + DOOR, y0 + h)
					trim(g1, g1 + 0.4, y0, y0 + DOOR + 0.3, WOOD); trim(g2 - 0.4, g2, y0, y0 + DOOR + 0.3, WOOD)
					trim(g1, g2, y0 + DOOR, y0 + DOOR + 0.5, WOOD)
					if g[3] == "d" or g[3] == "g" then
						doorSpecs[#doorSpecs + 1] = { kind = g[3], style = g[4], hinge = g[5], alongX = alongX, p = plane, g1 = g1, g2 = g2, y0 = y0 }
					end
				end
				cur = g2
			end
			if b > cur then seg(cur, b, y0, y0 + h); brk(cur, b); base(cur, b) end
		end

		local function floor(x1, z1, x2, z2, y, color, mat)
			box(x1, y, z1, x2, y + 0.3, z2, color, mat or MAT.WoodPlanks)
		end
		-- картина на стене: axis "x" (стена вдоль z) или "z" (стена вдоль x)
		local function pic(cx, cy, cz, axis, w, h, col)
			if axis == "x" then
				box(cx - 0.15, cy - h / 2 - 0.3, cz - w / 2 - 0.3, cx + 0.15, cy + h / 2 + 0.3, cz + w / 2 + 0.3, WOOD, MAT.Wood, 0, true)
				box(cx - 0.2, cy - h / 2, cz - w / 2, cx + 0.2, cy + h / 2, cz + w / 2, col, MAT.SmoothPlastic, 0, true)
			else
				box(cx - w / 2 - 0.3, cy - h / 2 - 0.3, cz - 0.15, cx + w / 2 + 0.3, cy + h / 2 + 0.3, cz + 0.15, WOOD, MAT.Wood, 0, true)
				box(cx - w / 2, cy - h / 2, cz - 0.2, cx + w / 2, cy + h / 2, cz + 0.2, col, MAT.SmoothPlastic, 0, true)
			end
		end
		-- занавески по бокам окна (не закрывают стекло) в стене z (x от xa до xb)
		local function curtainsZ(xa, xb, z, y0, col)
			box(xa - 1.9, y0 + 9.1, z - 0.3, xb + 1.9, y0 + 9.3, z + 0.3, WOOD, MAT.Wood, 0, true)
			box(xa - 1.7, y0 + 3.4, z - 0.35, xa - 0.2, y0 + 9, z + 0.35, col, MAT.Fabric, 0, true)
			box(xb + 0.2, y0 + 3.4, z - 0.35, xb + 1.7, y0 + 9, z + 0.35, col, MAT.Fabric, 0, true)
		end
		-- стул: (x,z) — центр, (bx,bz) — в какую сторону спинка (-1/0/1)
		local function chair(x, z, bx, bz, y, col)
			y = y or 0.3
			col = col or C(44, 62, 140)
			for _, ox in ipairs({ -0.7, 0.7 }) do
				for _, oz in ipairs({ -0.7, 0.7 }) do
					box(x + ox - 0.2, y, z + oz - 0.2, x + ox + 0.2, y + 1.6, z + oz + 0.2, WOOD)
				end
			end
			box(x - 1, y + 1.6, z - 1, x + 1, y + 2.0, z + 1, col, MAT.Fabric)
			local cx, cz = x + bx * 0.85, z + bz * 0.85
			if bx ~= 0 then -- спинка вдоль z
				box(cx - 0.15, y + 2, z - 1, cx + 0.15, y + 5, z - 0.8, WOOD); box(cx - 0.15, y + 2, z + 0.8, cx + 0.15, y + 5, z + 1, WOOD)
				box(cx - 0.12, y + 2.8, z - 0.8, cx + 0.12, y + 4.6, z + 0.8, col, MAT.Fabric)
			else -- спинка вдоль x
				box(x - 1, y + 2, cz - 0.15, x - 0.8, y + 5, cz + 0.15, WOOD); box(x + 0.8, y + 2, cz - 0.15, x + 1, y + 5, cz + 0.15, WOOD)
				box(x - 0.8, y + 2.8, cz - 0.12, x + 0.8, y + 4.6, cz + 0.12, col, MAT.Fabric)
			end
		end
		-- диван/кресло: (x1,z1)-(x2,z2) — габариты, face = "n"/"s"/"e"/"w" — куда смотрит сиденье (спинка с обратной стороны)
		local function sofa(x1, z1, x2, z2, face, col, c1, c2, backH)
			local y = 0.3
			local ARM, BACK = 0.9, 0.8
			backH = backH or 4.2
			local lenX = (face == "n" or face == "s")
			local backMax = (face == "n" or face == "w")
			local L1, L2 = lenX and x1 or z1, lenX and x2 or z2
			local D1, D2 = lenX and z1 or x1, lenX and z2 or x2
			local function sb(la, lb, da, db, ya, yb, c, mat)
				if lenX then box(la, ya, da, lb, yb, db, c, mat or MAT.Fabric) else box(da, ya, la, db, yb, lb, c, mat or MAT.Fabric) end
			end
			local bA, bB = backMax and (D2 - BACK) or D1, backMax and D2 or (D1 + BACK)
			sb(L1, L2, D1, D2, y, y + 1.7, col)                                -- сиденье
			sb(L1, L2, bA, bB, y + 1.7, y + backH, col)                         -- спинка
			sb(L1, L1 + ARM, D1, D2, y + 1.7, y + 3.2, col)                     -- подлокотники
			sb(L2 - ARM, L2, D1, D2, y + 1.7, y + 3.2, col)
			if c1 then
				local pa, pb = backMax and (bA - 1.4) or bB, backMax and bA or (bB + 1.4)
				sb(L1 + ARM + 0.2, L1 + ARM + 1.9, pa, pb, y + 1.7, y + 3.3, c1)
				sb(L2 - ARM - 1.9, L2 - ARM - 0.2, pa, pb, y + 1.7, y + 3.3, c2 or c1)
			end
		end
		-- кровать: head = "n"/"s"/"w"/"e" — у какой стены изголовье
		local function bed(x1, z1, x2, z2, y, color, head)
			local widthX = (head == "n" or head == "s")
			local headMin = (head == "n" or head == "w")
			local W1, W2 = widthX and x1 or z1, widthX and x2 or z2
			local L1, L2 = widthX and z1 or x1, widthX and z2 or x2
			local function bb(wa, wb, la, lb, ya, yb, c, mat)
				if widthX then box(wa, ya, la, wb, yb, lb, c, mat) else box(la, ya, wa, lb, yb, wb, c, mat) end
			end
			bb(W1, W2, L1, L2, y, y + 1.2, WOOD, MAT.Wood)
			bb(W1 + 0.2, W2 - 0.2, L1 + 0.2, L2 - 0.2, y + 1.2, y + 2, color, MAT.Fabric)
			local pa, pb = headMin and (L1 + 0.5) or (L2 - 2.3), headMin and (L1 + 2.3) or (L2 - 0.5)
			local mid = (W1 + W2) / 2
			bb(W1 + 0.4, mid - 0.15, pa, pb, y + 2, y + 2.7, WHITE, MAT.Fabric)
			bb(mid + 0.15, W2 - 0.4, pa, pb, y + 2, y + 2.7, WHITE, MAT.Fabric)
			if headMin then
				bb(W1, W2, L1, L1 + 0.4, y, y + 3.6, WOOD, MAT.Wood)
				bb(W1, W2, L2 - 0.4, L2, y, y + 1.9, WOOD, MAT.Wood)
			else
				bb(W1, W2, L2 - 0.4, L2, y, y + 3.6, WOOD, MAT.Wood)
				bb(W1, W2, L1, L1 + 0.4, y, y + 1.9, WOOD, MAT.Wood)
			end
		end
		local function lamp(x, y, z, shade)
			cyl(x, y, z, 0.9, 1.4, DARK); cyl(x, y + 1.4, z, 1.8, 1.6, shade or C(250, 236, 190), MAT.Fabric, true)
		end
		local function plant(x, z, y)
			y = y or 0.3
			cyl(x, y, z, 1.6, 1.3, C(170, 90, 60), MAT.Concrete); ball(x, y + 2.4, z, 2.6, C(60, 140, 60), MAT.Grass)
		end
		local function shelf(x1, z1, x2, z2, y, ht, alongZ)
			box(x1, y, z1, x2, y + ht, z2, C(95, 62, 40), MAT.Wood)
			local cols = { C(200, 60, 60), C(60, 110, 190), C(230, 190, 60), C(70, 160, 90), C(150, 80, 170) }
			local n = 0
			for lv = 1, 3 do
				local yy = y + 0.8 + (lv - 1) * (ht - 1) / 3
				if alongZ then
					local x = x2 + 0.01
					for z = z1 + 0.3, z2 - 0.8, 0.7 do n += 1; box(x, yy, z, x + 0.4, yy + 1.4, z + 0.5, cols[n % 5 + 1], MAT.SmoothPlastic, 0, true) end
				else
					local zf = z2 + 0.01
					for x = x1 + 0.3, x2 - 0.8, 0.7 do n += 1; box(x, yy, zf, x + 0.5, yy + 1.4, zf + 0.4, cols[n % 5 + 1], MAT.SmoothPlastic, 0, true) end
				end
			end
		end
		local function triX(x, zA, zB, zR, y0, y1, color)   -- фронтон-треугольник в плоскости YZ (ступеньками)
			for k = 0, 5 do
				local ya, yb = y0 + (y1 - y0) * k / 6, y0 + (y1 - y0) * (k + 1) / 6
				local t = (k + 1) / 6
				box(x - 0.3, ya, zR - (zR - zA) * (1 - t), x + 0.3, yb, zR + (zB - zR) * (1 - t), color)
			end
		end
		local function triZ(z, xA, xB, xR, y0, y1, color)   -- фронтон-треугольник в плоскости XY
			for k = 0, 5 do
				local ya, yb = y0 + (y1 - y0) * k / 6, y0 + (y1 - y0) * (k + 1) / 6
				local t = (k + 1) / 6
				box(xR - (xR - xA) * (1 - t), ya, z - 0.3, xR + (xB - xR) * (1 - t), yb, z + 0.3, color)
			end
		end
		local ROOF = C(104, 62, 46)
		local function roofX(xc, w, zMid, yMid, len, ang) -- скат, наклон вдоль Z
			local p = Instance.new("Part")
			p.Anchored = true; p.Size = Vector3.new(w, 1, len)
			p.CFrame = CFrame.new(at(xc, yMid, zMid)) * CFrame.Angles(ang, 0, 0)
			p.Color = ROOF; p.Material = MAT.Slate; p.Parent = folder
		end
		local function roofZ(xMid, yMid, zc, len, d, ang) -- скат, наклон вдоль X
			local p = Instance.new("Part")
			p.Anchored = true; p.Size = Vector3.new(len, 1, d)
			p.CFrame = CFrame.new(at(xMid, yMid, zc)) * CFrame.Angles(0, 0, ang)
			p.Color = ROOF; p.Material = MAT.Slate; p.Parent = folder
		end

		----------------------------------------------------------------
		-- ЗЕМЛЯ, ДОРОГА, ТРОТУАР, ДВОР
		----------------------------------------------------------------
		do -- v6: земля с дырой под люк подвала (x 7–12, z 33–38)
			local GR = C(96, 170, 70)
			box(-300, -6, -300, 380, 0, 33, GR, MAT.Grass)
			box(-300, -6, 38, 380, 0, 380, GR, MAT.Grass)
			box(-300, -6, 33, 7, 0, 38, GR, MAT.Grass)
			box(12, -6, 33, 380, 0, 38, GR, MAT.Grass)
		end
		box(1, 0, 57, 19, 0.15, 97, C(188, 188, 183), MAT.Concrete, 0, true)           -- подъездная дорожка
		box(51.6, 0, 42, 60.8, 0.15, 97, C(188, 188, 183), MAT.Concrete, 0, true)      -- дорожка к двери
		box(51.4, 0, 38.35, 61, 0.3, 42, C(196, 194, 188), MAT.Concrete)               -- крыльцо вровень с полом
		box(52.6, 0, 42, 59.8, 0.15, 43.2, C(176, 174, 168), MAT.Concrete, 0, true)    -- ступенька крыльца
		box(-300, 0, 97, 380, 0.15, 99, C(200, 200, 195), MAT.Concrete, 0, true)       -- тротуар
		box(-300, 0, 99, 380, 0.45, 99.6, C(165, 165, 160), MAT.Concrete)              -- бордюр
		box(-300, 0, 99.6, 380, 0.15, 115, C(52, 52, 58), MAT.Asphalt, 0, true)        -- дорога
		box(-300, 0, 115, 380, 0.45, 115.6, C(165, 165, 160), MAT.Concrete)
		box(-300, 0, 115.6, 380, 0.15, 118, C(200, 200, 195), MAT.Concrete, 0, true)
		for x = -290, 370, 14 do box(x, 0.15, 106.8, x + 7, 0.2, 107.2, C(235, 200, 40), MAT.SmoothPlastic, 0, true) end
		for x = 4, 18, 14 do box(x, 0.15, 97, x + 0.2, 0.17, 99, C(150, 150, 145), MAT.Concrete, 0, true) end
		-- деревья
		for _, tp in ipairs({ { -8, 20 }, { 98, 30 }, { -14, 78 }, { 100, 82 }, { 32, 140 } }) do
			box(tp[1] - 0.9, 0, tp[2] - 0.9, tp[1] + 0.9, 8, tp[2] + 0.9, C(100, 70, 45), MAT.Wood)
			ball(tp[1], 11, tp[2], 14, C(70, 150, 60), MAT.Grass); ball(tp[1] + 3, 13, tp[2] - 2, 9, C(80, 165, 66), MAT.Grass)
		end
		-- кусты у фасада (не закрывают крыльцо)
		for _, bx in ipairs({ 20, 25, 34, 40, 46, 66, 72 }) do ball(bx, 1.6, bx < 60 and 39.6 or 45.6, 3.8, C(60, 142, 62), MAT.Grass) end
		-- почтовый ящик и фонарь
		box(63.5, 0, 90.9, 64.1, 3.4, 91.5, DARK); box(62.8, 3.4, 90.4, 64.8, 4.8, 92.6, C(60, 80, 160), MAT.Metal)
		box(88.7, 0, 98, 89.3, 14, 98.6, C(60, 60, 64), MAT.Metal); box(86.5, 13.6, 97.8, 89.3, 14.3, 98.8, C(60, 60, 64), MAT.Metal)
		-- фонарики у входной двери
		for _, lx in ipairs({ 52.2, 60.4 }) do
			local lp0 = cyl(lx, 6.4, 38.9, 0.9, 1.5, C(255, 232, 170), MAT.Neon, true)
			box(lx - 0.35, 7.9, 38.55, lx + 0.35, 8.1, 39.25, DARK, MAT.Metal, 0, true)
		end

		----------------------------------------------------------------
		-- ПОЛЫ 1 ЭТАЖА
		----------------------------------------------------------------
		for i = 0, 6 do for j = 0, 8 do -- кухня: шахматная плитка
			local c = ((i + j) % 2 == 0) and C(240, 240, 232) or C(150, 190, 200)
			box(18 + i * 2, 0, 3 + j * 4, 20 + i * 2 > 32 and 32 or 20 + i * 2, 0.3, 7 + j * 4 > 38 and 38 or 7 + j * 4, c, MAT.Marble)
		end end
		floor(32, 3, 58, 20, 0, C(196, 120, 88), MAT.Slate)           -- гостиная: терракота
		floor(32, 20, 51, 38, 0, C(176, 128, 84))                      -- столовая: доски
		floor(51, 20, 64, 38, 0, C(150, 104, 70))                      -- прихожая
		floor(58, 3, 82, 20, 0, C(226, 206, 170), MAT.Fabric)          -- красная гостиная
		floor(64, 20, 82, 25, 0, C(168, 124, 84))                      -- коридор
		floor(64, 25, 82, 44, 0, C(60, 92, 64), MAT.Fabric)            -- кабинет
		do -- гараж (с люком в подвал)
			local GF = C(150, 150, 150)
			floor(2, 26, 18, 33, 0, GF, MAT.Concrete); floor(2, 38, 18, 57, 0, GF, MAT.Concrete)
			floor(2, 33, 7, 38, 0, GF, MAT.Concrete); floor(12, 33, 18, 38, 0, GF, MAT.Concrete)
		end
		box(53, 0.3, 24, 58, 0.4, 35, C(190, 40, 40), MAT.Fabric, 0, true)    -- красная дорожка в прихожей
		box(37.5, 0.3, 6, 51.5, 0.4, 15.2, C(232, 198, 70), MAT.Fabric, 0, true) -- жёлтый ковёр в гостиной
		box(66, 0.3, 6, 78, 0.4, 16, C(236, 150, 60), MAT.Fabric, 0, true)    -- оранжевый ковёр
		box(68, 0.3, 30, 78, 0.4, 40, C(40, 150, 80), MAT.Fabric, 0, true)

		----------------------------------------------------------------
		-- ПЕРЕКРЫТИЯ
		----------------------------------------------------------------
		local SL = C(160, 115, 75)
		box(16, 11, 1, 51, 12, 40, C(236, 226, 200))                  -- потолок западной (низкой) части
		box(51, 11, 3, 82, 12, 28, SL, MAT.WoodPlanks)               -- пол 2 этажа
		box(51, 11, 28, 58, 12, 38, SL, MAT.WoodPlanks)
		box(64, 11, 28, 82, 12, 44, SL, MAT.WoodPlanks)
		box(64, 11.6, 44, 82, 12, 48, SL, MAT.WoodPlanks)            -- балкон
		for i = 0, 12 do local x = 64.1 + i * 1.5; box(x, 12, 47.6, x + 0.3, 15, 47.9, WHITE, MAT.Wood) end
		box(64, 14.8, 47.5, 82, 15.2, 48, WHITE, MAT.Wood)
		box(64, 14.8, 44, 64.4, 15.2, 48, WHITE, MAT.Wood); box(81.6, 14.8, 44, 82, 15.2, 48, WHITE, MAT.Wood)
		for _, rz in ipairs({ 44.6, 46, 47.2 }) do box(64, 12, rz, 64.3, 14.8, rz + 0.3, WHITE, MAT.Wood); box(81.7, 12, rz, 82, 14.8, rz + 0.3, WHITE, MAT.Wood) end
		for i = 1, 12 do -- лестница (верх последней ступени вровень с полом 2 этажа)
			local zA, zB = 38 - i * (10 / 12), 38 - (i - 1) * (10 / 12)
			box(59.5, 0.3, zA, 63.6, i + 0.3, zB, WOOD, MAT.WoodPlanks)
		end
		-- v6: ЩЕЛЬ У ЛЕСТНИЦЫ ЗАКРЫТА: над проёмом лестницы между этажами (y 11–12) не было стены — просвет на улицу
		box(58, 11, 37.65, 64, 12, 38, ENTRY, MAT.SmoothPlastic)
		box(58, 11, 38, 64, 12, 38.35, SIDING, MAT.SmoothPlastic)
		box(63.65, 11, 28, 64, 12, 38, ENTRY, MAT.SmoothPlastic)
		box(58, 11, 28, 58.35, 12, 38, HALLC, MAT.SmoothPlastic)

		----------------------------------------------------------------
		-- СТЕНЫ 1 ЭТАЖА (наружные: кирпичный низ + сайдинг)
		----------------------------------------------------------------
		wall(18, 3, 32, 3, 0, H, { { 22, 28, "w" } }, SIDING, KIT, "m")
		wall(32, 3, 58, 3, 0, H, { { 38, 52, "s" } }, SIDING, LIVW, "m")                      -- раздвижная дверь на патио
		wall(58, 3, 82, 3, 0, H, { { 66, 76, "w" } }, SIDING, RED, "m")
		wall(18, 3, 18, 26, 0, H, { { 8, 15, "w" } }, SIDING, KIT, "m")
		wall(18, 26, 18, 38, 0, H, { { 30, 36, "d", "wood" } }, GARP, KIT)                      -- дверь кухня ↔ гараж
		wall(18, 38, 18, 57, 0, 10, nil, GARP, SIDING, "p")
		wall(18, 38, 32, 38, 0, H, { { 21, 29, "w" } }, KIT, SIDING, "p")
		wall(32, 38, 51, 38, 0, H, { { 36, 46, "w" } }, CREAM, SIDING, "p")
		wall(51, 38, 64, 38, 0, H, { { 53.2, 59.2, "d", "front" } }, ENTRY, SIDING, "p")      -- ВХОДНАЯ ДВЕРЬ
		wall(64, 44, 82, 44, 0, H, { { 68, 78, "w" } }, GREEND, SIDING, "p")
		wall(82, 3, 82, 20, 0, H, nil, RED, SIDING, "p")                                       -- (окно убрано: там стоит телевизор)
		wall(82, 20, 82, 25, 0, H, nil, HALLC, SIDING, "p")
		wall(82, 25, 82, 44, 0, H, { { 32, 40, "w" } }, GREEND, SIDING, "p")
		wall(64, 38, 64, 44, 0, H, nil, SIDING, GREEND, "m")
		-- гараж
		wall(2, 26, 18, 26, 0, 10, nil, SIDING, GARP, "m")
		wall(2, 26, 2, 57, 0, 10, nil, SIDING, GAR, "m")
		wall(2, 57, 18, 57, 0, 10, { { 4, 16, "g" } }, GAR, SIDING, "p")                      -- гаражные ворота (поднимаются)
		-- внутренние стены 1 этажа
		wall(32, 3, 32, 20, 0, H, { { 8, 14 } }, KIT, LIVW)
		wall(32, 20, 51, 20, 0, H, { { 40, 48 } }, LIVW, CREAM)
		wall(51, 20, 58, 20, 0, H, { { 52, 57 } }, LIVW, ENTRY)
		wall(51, 20, 51, 38, 0, H, { { 26, 32 } }, CREAM, ENTRY)
		wall(58, 3, 58, 20, 0, H, { { 10, 16 } }, LIVW, RED)
		wall(58, 20, 64, 20, 0, H, nil, RED, ENTRY)
		wall(64, 20, 82, 20, 0, H, { { 66, 72 } }, RED, HALLC)
		wall(64, 25, 82, 25, 0, H, { { 70, 76 } }, HALLC, GREEND)
		wall(64, 25, 64, 38, 0, H, nil, ENTRY, GREEND)

		----------------------------------------------------------------
		-- СТЕНЫ 2 ЭТАЖА (башня справа)
		----------------------------------------------------------------
		wall(51, 3, 66, 3, 12, H, { { 55, 63, "w" } }, SIDING, PINK)
		wall(66, 3, 82, 3, 12, H, { { 70, 78, "w" } }, SIDING, MGREEN)
		wall(51, 3, 51, 20, 12, H, { { 8, 15, "w" } }, SIDING, PINK)
		wall(51, 20, 51, 28, 12, H, nil, SIDING, HALLC)
		wall(51, 28, 51, 38, 12, H, nil, SIDING, BATH)
		wall(51, 38, 58, 38, 12, H, { { 53, 56, "w" } }, BATH, SIDING)
		wall(58, 38, 64, 38, 12, H, { { 59, 63, "w" } }, HALLC, SIDING)
		wall(64, 28, 64, 38, 12, H, nil, HALLC, BJ)
		wall(64, 38, 64, 44, 12, H, nil, SIDING, BJ)
		wall(64, 44, 82, 44, 12, H, { { 71, 79, "d", "glass" } }, BJ, SIDING)                   -- балконная дверь
		wall(82, 3, 82, 20, 12, H, { { 8, 16, "w" } }, MGREEN, SIDING)
		wall(82, 20, 82, 28, 12, H, nil, HALLC, SIDING)
		wall(82, 28, 82, 44, 12, H, { { 32, 38, "w" } }, BJ, SIDING)
		wall(51, 20, 66, 20, 12, H, { { 56.8, 61.2, "d" } }, PINK, HALLC)                      -- дверь Саммер
		wall(66, 20, 82, 20, 12, H, { { 70.8, 75.2, "d" } }, MGREEN, HALLC)                    -- дверь Морти
		wall(66, 3, 66, 20, 12, H, nil, PINK, MGREEN)
		wall(51, 28, 58, 28, 12, H, { { 52.3, 56.7, "d", nil, "e" } }, HALLC, BATH)            -- дверь ванной
		wall(58, 28, 58, 38, 12, H, nil, BATH, HALLC)
		wall(64, 28, 82, 28, 12, H, { { 70.8, 75.2, "d" } }, HALLC, BJ)                        -- дверь Джерри и Бет

		----------------------------------------------------------------
		-- ПОЛЫ 2 ЭТАЖА
		----------------------------------------------------------------
		floor(51, 3, 66, 20, 12, C(238, 196, 206), MAT.Fabric)
		floor(66, 3, 82, 20, 12, C(158, 206, 146), MAT.Fabric)
		floor(51, 20, 82, 28, 12, C(168, 124, 84))
		floor(51, 28, 58, 38, 12, C(235, 240, 242), MAT.Marble)
		floor(64, 28, 82, 44, 12, C(214, 160, 160), MAT.Fabric)

		----------------------------------------------------------------
		-- КРЫШИ (низкая крыша теперь заканчивается у стены башни — не лезет в комнаты 2 этажа)
		----------------------------------------------------------------
		box(49, 23, 1, 84, 24, 46, C(236, 226, 200))                                    -- потолок 2 этажа
		-- низкая крыша над кухней/гостиной/столовой (гребень вдоль X, z=21), x от 15.5 до 50.9
		roofX(33.2, 35.4, 11, 14.05, math.sqrt(20 ^ 2 + 4.5 ^ 2) + 1, -math.atan2(4.5, 20))
		roofX(33.2, 35.4, 31, 14.05, math.sqrt(20 ^ 2 + 4.5 ^ 2) + 1, math.atan2(4.5, 20))
		triX(15.8, 1, 41, 21, 12, 15.9, SIDING)
		-- крыша башни (гребень вдоль X, z=23)
		roofX(66.5, 38, 12, 27.0, math.sqrt(22 ^ 2 + 6 ^ 2) + 1, -math.atan2(6, 22))
		roofX(66.5, 38, 34.5, 27.0, math.sqrt(23 ^ 2 + 6 ^ 2) + 1, math.atan2(6, 23))
		triX(49.7, 1, 46, 23, 24, 29.6, SIDING); triX(83.3, 1, 46, 23, 24, 29.6, SIDING)
		-- гараж: фронтон к дороге, гребень вдоль Z (x=10)
		roofZ(5.5, 12.9, 41.5, math.sqrt(9 ^ 2 + 4.5 ^ 2) + 1, 36, math.atan2(4.5, 9))
		roofZ(14.5, 12.9, 41.5, math.sqrt(9 ^ 2 + 4.5 ^ 2) + 1, 36, -math.atan2(4.5, 9))
		triZ(57, 1, 19, 10, 10, 14.6, SIDING); triZ(26, 1, 19, 10, 10, 14.6, SIDING)
		box(1, 9.9, 25.5, 19, 10.2, 58.5, C(235, 225, 200))
		-- баскетбольное кольцо на фронтоне гаража
		box(6.5, 10.8, 57.35, 13.5, 14.2, 57.75, WHITE, MAT.SmoothPlastic)
		box(8.5, 11.6, 57.4, 11.5, 13.0, 57.8, C(220, 60, 40), MAT.SmoothPlastic, 0, true)
		box(9.6, 10.2, 57.4, 10.4, 10.8, 58.4, C(80, 80, 80), MAT.Metal, 0, true)
		for k = 0, 11 do
			local ra = k / 12 * math.pi * 2
			local rx, rz = 10 + math.cos(ra) * 1.5, 59.2 + math.sin(ra) * 1.5
			box(rx - 0.2, 10.3, rz - 0.2, rx + 0.2, 10.6, rz + 0.2, C(240, 110, 30), MAT.Metal, 0, true)
		end
		-- дымоход (стоит на перекрытии и проходит сквозь крышу)
		box(40, 12, 5.5, 43, 19.2, 8.5, C(158, 64, 48), MAT.Brick)
		box(39.7, 19.2, 5.2, 43.3, 19.6, 8.8, C(120, 50, 40), MAT.Brick)

		----------------------------------------------------------------
		-- МЕБЕЛЬ: СТОЛОВАЯ
		----------------------------------------------------------------
		for i = 0, 3 do for j = 0, 3 do
			local c = ((i + j) % 2 == 0) and C(206, 212, 84) or C(172, 184, 58)
			box(37 + i * 2.5, 3, 24 + j * 2.5, 39.5 + i * 2.5, 3.08, 26.5 + j * 2.5, c, MAT.Fabric, 0, true)
		end end
		box(37, 2.55, 24, 47, 3, 34, WOOD, MAT.Wood)
		for _, lx in ipairs({ 37.6, 46.4 }) do for _, lz in ipairs({ 24.6, 33.4 }) do box(lx - 0.35, 0.3, lz - 0.35, lx + 0.35, 2.55, lz + 0.35, WOOD, MAT.Wood) end end
		for _, cz in ipairs({ 25.5, 29, 32.5 }) do chair(35.2, cz, -1, 0); chair(48.8, cz, 1, 0) end
		chair(42, 22.4, 0, -1); chair(42, 35.6, 0, 1)                           -- стулья по торцам: спинки наружу
		curtainsZ(36, 46, 37.2, 0, C(232, 120, 150))
		pic(50.6, 6.5, 22.8, "x", 2.4, 3.2, C(210, 150, 60)); pic(50.6, 6.5, 35.2, "x", 2.4, 3.2, C(80, 130, 200))
		box(32.6, 0.3, 21, 35, 4, 23.8, WOOD, MAT.Wood); plant(33.8, 22.4, 4) -- тумба, цветок стоит НА ней
		bulb(42, 10.65, 29)

		----------------------------------------------------------------
		-- ГОСТИНАЯ (балки, мятный диван, бирюзовое кресло) — проходы к дверям свободны
		----------------------------------------------------------------
		for _, bx in ipairs({ 35, 40, 45, 50, 55 }) do box(bx - 0.5, 9.4, 3.4, bx + 0.5, 10.7, 19.6, C(110, 68, 42), MAT.Wood) end
		box(33.4, 9.4, 3.4, 57.6, 10.7, 4.4, C(110, 68, 42), MAT.Wood)
		sofa(39.5, 12, 51.5, 16, "n", C(150, 214, 186), C(220, 120, 110), C(240, 220, 120)) -- диван смотрит на патио
		sofa(34.4, 15.4, 38.2, 19.2, "n", C(30, 130, 140))                                  -- бирюзовое кресло
		box(41.5, 1.4, 7.4, 49.5, 1.8, 10.8, C(150, 100, 60), MAT.Wood)                      -- журнальный стол
		for _, lx in ipairs({ 42, 49 }) do for _, lz in ipairs({ 8, 10.2 }) do box(lx - 0.25, 0.3, lz - 0.25, lx + 0.25, 1.4, lz + 0.25, WOOD) end end
		sofa(53.9, 5.6, 57.5, 9.4, "w", C(170, 40, 50))                                      -- красное кресло в углу (дверь свободна)
		shelf(32.5, 3.5, 37.4, 4.8, 0.3, 8.5, false)                                         -- книжный шкаф
		box(32.4, 0.3, 16, 34.2, 2.4, 17.8, WOOD, MAT.Wood); lamp(33.3, 2.4, 16.9)            -- столик с лампой
		plant(56.7, 4.4)
		pic(32.6, 6.5, 17.5, "x", 2.2, 3, C(90, 160, 90))
		bulb(42.5, 10.65, 10)

		----------------------------------------------------------------
		-- КРАСНАЯ ГОСТИНАЯ (телевизор, диван, кресло)
		----------------------------------------------------------------
		box(80, 0.3, 7, 81.6, 3, 15, DARK, MAT.Wood)
		box(80.6, 3, 8, 81.3, 6.6, 14, C(14, 14, 18)); box(80.45, 3.2, 8.2, 80.6, 6.4, 13.8, C(40, 60, 80), MAT.Glass)
		sofa(66.4, 6.5, 70.4, 15.5, "e", C(226, 196, 140), C(220, 120, 110), C(110, 170, 120))
		sofa(73, 15.2, 77, 19.2, "n", C(100, 34, 54))
		box(78, 0.3, 17, 80, 2.2, 19, WOOD, MAT.Wood); lamp(79, 2.2, 18)
		plant(59.8, 18.2)
		curtainsZ(66, 76, 3.8, 0, C(240, 220, 200))
		pic(75.2, 6.5, 19.5, "z", 3, 2.4, C(90, 170, 100)); pic(79, 6.5, 19.5, "z", 2.2, 3, C(230, 190, 60))
		bulb(70, 10.65, 11)

		----------------------------------------------------------------
		-- КУХНЯ
		----------------------------------------------------------------
		box(18.7, 0.3, 4, 21.8, 3.2, 21.5, WHITE, MAT.Marble)                                   -- тумбы вдоль окна
		box(18.7, 0.3, 21.5, 21.8, 3.2, 25.5, C(200, 205, 210), MAT.Metal)                      -- плита
		box(18.7, 0.3, 25.5, 21.8, 3.2, 28, WHITE, MAT.Marble)
		box(18.7, 3.2, 4, 21.9, 3.5, 28, C(80, 80, 85), MAT.Granite)                            -- столешница
		for _, st in ipairs({ { 19.6, 22.3 }, { 19.6, 24.7 }, { 21, 22.3 }, { 21, 24.7 } }) do cyl(st[1], 3.5, st[2], 1, 0.12, DARK, MAT.Metal, true) end
		box(19.8, 3.5, 9.5, 21.4, 3.65, 13.5, C(170, 175, 180), MAT.Metal, 0, true)             -- раковина под окном
		cyl(19.2, 3.5, 11.5, 0.4, 1.4, C(190, 195, 200), MAT.Metal, true)
		box(19, 4.7, 11.3, 20.4, 5, 11.7, C(190, 195, 200), MAT.Metal, 0, true)                 -- кран
		box(18.7, 6.6, 4, 20.6, 9.6, 7.6, C(250, 240, 200), MAT.Wood); box(18.7, 6.6, 15.6, 20.6, 9.6, 28, C(250, 240, 200), MAT.Wood)
		box(24.8, 0.3, 10, 28.2, 3.4, 24, WHITE, MAT.Marble); box(24.6, 3.4, 9.8, 28.4, 3.7, 24.2, C(90, 90, 95), MAT.Granite) -- остров
		for _, sz in ipairs({ 16, 19.5, 23 }) do cyl(30, 0.3, sz, 1.6, 2.4, C(235, 190, 50), MAT.SmoothPlastic) end                -- табуреты (не у двери)
		box(26, 0.3, 3.6, 30.2, 7.8, 6.8, C(214, 220, 226), MAT.Metal)                        -- холодильник
		box(26, 4.9, 6.75, 30.2, 5.05, 6.85, DARK, MAT.Metal, 0, true)
		pic(31.6, 6.5, 4.8, "x", 2.2, 2.8, C(210, 120, 60))
		bulb(25, 10.65, 20)

		----------------------------------------------------------------
		-- ПРИХОЖАЯ, КОРИДОР, КАБИНЕТ
		----------------------------------------------------------------
		box(51.4, 0.3, 33.6, 53.2, 2.6, 36.6, WOOD, MAT.Wood); lamp(52.3, 2.6, 35.1)           -- столик с лампой (не перед дверью)
		pic(51.6, 6.2, 35.6, "x", 2.4, 3.4, C(180, 214, 230))                                  -- зеркало
		box(51.4, 5, 21, 51.9, 5.5, 25.4, WOOD, MAT.Wood, 0, true)                             -- вешалка (не в проёме)
		for z = 21.5, 24.7, 1.1 do box(51.2, 4.8, z, 52, 5.2, z + 0.25, C(180, 180, 185), MAT.Metal, 0, true) end
		box(53.6, 0.3, 35.2, 58.6, 0.4, 37.4, C(70, 50, 40), MAT.Fabric, 0, true)               -- коврик у двери
		bulb(57, 10.65, 30)
		-- кабинет: стол в углу, не загораживает дверь
		box(76.6, 2, 25.8, 81.6, 3, 28.4, WOOD, MAT.Wood); box(77, 0.3, 26, 77.5, 2, 28.2, WOOD); box(80.9, 0.3, 26, 81.4, 2, 28.2, WOOD)
		box(79, 3, 26.3, 79.6, 3.5, 26.9, DARK, MAT.Metal, 0, true)
		box(77.9, 3.5, 26.5, 80.7, 5.7, 26.7, C(20, 22, 28), MAT.SmoothPlastic, 0, true)
		box(78.1, 3.7, 26.7, 80.5, 5.5, 26.8, C(70, 140, 190), MAT.Neon, 0, true)
		chair(79.3, 30.4, 0, 1)
		shelf(64.4, 35, 66, 42.8, 0.3, 8, true)
		sofa(77.6, 33.6, 81.6, 39.6, "w", C(70, 130, 90), nil, nil, 3.2)                         -- спинка ниже подоконника
		curtainsZ(68, 78, 43.2, 0, C(210, 200, 150))
		bulb(73, 10.65, 34)

		----------------------------------------------------------------
		-- ГАРАЖ РИКА — ЛАБОРАТОРИЯ (по скриншоту): фиолетовая и зелёно-серая стены, балки, жалюзи,
		-- перфорированная доска, L-образный стол с синими шкафами, раковина, стиралка/сушилка, стеллаж.
		-- На западном столе лежит ЛАЗЕРНЫЙ ПИСТОЛЕТ РИКА — нажми «Взять».
		----------------------------------------------------------------
		do
			local Y0, TOP = 0.3, 4.0
			local NAVY, CAB, TOPC = C(44, 64, 112), C(124, 122, 116), C(228, 220, 198)
			local METAL, GLASSC, BEAM = C(150, 152, 148), C(190, 226, 232), C(92, 44, 36)
			local NEONM = MAT.Neon

			local function wcyl(x, y, z, d, len, color, mat, ax, nocol, tr)
				local p = Instance.new("Part")
				p.Shape = Enum.PartType.Cylinder
				p.Anchored = true; p.CanTouch = false; p.CanCollide = not nocol
				p.Size = Vector3.new(len, d, d)
				local rot = CFrame.new()
				if ax == "z" then rot = CFrame.Angles(0, math.pi / 2, 0) elseif ax == "y" then rot = CFrame.Angles(0, 0, math.pi / 2) end
				p.CFrame = CFrame.new(at(x, y, z)) * rot
				p.Color = color; p.Material = mat or MAT.SmoothPlastic
				p.Transparency = tr or 0
				p.Parent = folder
				return p
			end
			local function glass(x, y, z, d, len, tr) return wcyl(x, y, z, d, len, GLASSC, MAT.Glass, "y", true, tr or 0.5) end
			local function rod(x1, y1, z1, x2, y2, z2, th, color, mat)
				local a, b = at(x1, y1, z1), at(x2, y2, z2)
				local len = math.max(0.05, (b - a).Magnitude)
				local p = Instance.new("Part")
				p.Anchored = true; p.CanCollide = false; p.CanTouch = false
				p.Size = Vector3.new(th, th, len)
				local up = (math.abs((b - a).Unit.Y) > 0.98) and Vector3.xAxis or Vector3.yAxis
				p.CFrame = CFrame.lookAt((a + b) / 2, b, up)
				p.Color = color; p.Material = mat or MAT.SmoothPlastic
				p.Parent = folder
				return p
			end
			local function tripod(cx, cz, h)
				local DK = C(40, 40, 46)
				wcyl(cx, TOP + h, cz, 1.7, 0.08, DK, MAT.Metal, "y", true)
				for k = 0, 2 do
					local a = k * math.pi * 2 / 3 + 0.5
					rod(cx + math.cos(a) * 0.7, TOP + h, cz + math.sin(a) * 0.7, cx + math.cos(a) * 1.1, TOP, cz + math.sin(a) * 1.1, 0.1, DK, MAT.Metal)
				end
				wcyl(cx, TOP + h + 0.35, cz, 1.7, 0.45, GLASSC, MAT.Glass, "y", true, 0.45)
				wcyl(cx, TOP + h + 0.8, cz, 1.25, 0.45, GLASSC, MAT.Glass, "y", true, 0.45)
				wcyl(cx, TOP + h + 1.25, cz, 0.85, 0.45, GLASSC, MAT.Glass, "y", true, 0.45)
				wcyl(cx, TOP + h + 1.85, cz, 0.45, 0.7, GLASSC, MAT.Glass, "y", true, 0.45)
				wcyl(cx, TOP + h + 0.3, cz, 1.45, 0.3, C(120, 220, 150), MAT.Glass, "y", true, 0.35)
			end
			local function knob(x, y, z, d) return wcyl(x, y, z, d, 0.12, C(34, 34, 38), MAT.Metal, "x", true) end

			-- стены/пол: красим пол, балки на западной стене
			do
				local MC = C(176, 192, 184)
				box(2.4, 0.3, 26.4, 17.6, 0.34, 33, MC, MAT.Concrete, 0, true); box(2.4, 0.3, 38, 17.6, 0.34, 56.6, MC, MAT.Concrete, 0, true)
				box(2.4, 0.3, 33, 7, 0.34, 38, MC, MAT.Concrete, 0, true); box(12, 0.3, 33, 17.6, 0.34, 38, MC, MAT.Concrete, 0, true)
			end
			for _, pz in ipairs({ 27.0, 40.2, 48.4, 55.6 }) do box(2.35, Y0, pz, 2.95, 9.9, pz + 0.7, BEAM, MAT.Wood, 0, true) end

			-- ЖАЛЮЗИ в западной стене
			box(2.35, 4.6, 41.0, 2.7, 9.2, 48.4, C(56, 40, 32), MAT.Wood, 0, true)
			for i = 0, 10 do box(2.55, 4.8 + i * 0.4, 41.3, 2.85, 5.0 + i * 0.4, 48.0, C(112, 116, 114), MAT.Metal, 0, true) end

			-- ПЕРФОРИРОВАННАЯ ДОСКА + колёсо + ручки, полка с катушками, огнетушитель
			box(2.35, 5.4, 28.2, 2.6, 8.0, 38.4, C(226, 194, 110), MAT.Wood, 0, true)
			for zi = 0, 9 do for yj = 0, 2 do
				box(2.6, 5.75 + yj * 0.85, 28.6 + zi * 0.95, 2.64, 5.9 + yj * 0.85, 28.75 + zi * 0.95, C(60, 48, 30), MAT.SmoothPlastic, 0, true)
			end end
			wcyl(2.9, 6.3, 29.6, 0.9, 0.5, C(26, 26, 30), MAT.Metal, "x", true)
			wcyl(2.9, 7.2, 36.0, 0.9, 0.5, C(26, 26, 30), MAT.Metal, "x", true)
			wcyl(2.9, 6.0, 37.4, 0.8, 0.5, C(26, 26, 30), MAT.Metal, "x", true)
			wcyl(2.85, 6.9, 32.9, 2.4, 0.3, C(44, 46, 50), MAT.Metal, "x", true)
			box(2.95, 6.8, 31.8, 3.05, 7.0, 34.0, C(190, 190, 186), MAT.Metal, 0, true)
			box(2.95, 5.8, 32.8, 3.05, 8.0, 33.0, C(190, 190, 186), MAT.Metal, 0, true)
			box(2.35, 8.1, 28.0, 4.4, 8.3, 38.6, C(92, 50, 38), MAT.Wood, 0, true)
			for _, sz in ipairs({ 29.2, 31.0 }) do
				wcyl(3.0, 8.6, sz, 0.55, 0.6, C(214, 196, 150), MAT.SmoothPlastic, "y", true)
				wcyl(3.0, 8.35, sz, 0.95, 0.1, C(150, 100, 66), MAT.Wood, "y", true)
				wcyl(3.0, 8.85, sz, 0.95, 0.1, C(150, 100, 66), MAT.Wood, "y", true)
			end
			wcyl(3.3, 8.95, 37.4, 0.9, 1.4, C(196, 36, 36), MAT.Metal, "y", true)
			wcyl(3.3, 9.78, 37.4, 0.4, 0.25, C(40, 40, 44), MAT.Metal, "y", true)
			box(3.0, 9.55, 37.2, 3.6, 9.7, 37.6, C(40, 40, 44), MAT.Metal, 0, true)
			box(3.2, 9.0, 37.85, 3.4, 9.5, 37.95, C(236, 236, 230), MAT.SmoothPlastic, 0, true)

			-- ЗАПАДНЫЙ СТОЛ (синие шкафы, серые дверцы, кремовая столешница, деревянные ножки)
			box(2.6, Y0, 26.6, 5.8, 0.55, 43.8, C(60, 60, 64), MAT.Metal)
			box(2.4, 0.55, 26.4, 6.0, 3.7, 44.0, NAVY, MAT.SmoothPlastic)
			box(2.3, 3.7, 26.3, 6.3, 4.0, 48.0, TOPC, MAT.SmoothPlastic)
			for k = 0, 6 do
				local z = 26.9 + k * 2.45
				box(6.0, 0.8, z, 6.08, 3.55, z + 2.3, CAB, MAT.SmoothPlastic, 0, true)
				local kz = (k % 2 == 0) and (z + 1.85) or (z + 0.25)
				box(6.08, 2.7, kz, 6.2, 3.1, kz + 0.12, DARK, MAT.Metal, 0, true)
			end
			for _, lz in ipairs({ 44.6, 47.3 }) do
				box(5.5, Y0, lz, 5.9, 3.7, lz + 0.4, C(214, 176, 90), MAT.Wood)
				box(2.5, Y0, lz, 2.9, 3.7, lz + 0.4, C(214, 176, 90), MAT.Wood)
			end
			box(5.5, 1.3, 44.6, 5.9, 1.6, 47.7, C(214, 176, 90), MAT.Wood, 0, true)

			-- СЕВЕРНЫЙ СТОЛ
			box(6.0, Y0, 26.6, 13.4, 0.55, 29.8, C(60, 60, 64), MAT.Metal)
			box(6.0, 0.55, 26.4, 13.4, 3.7, 30.0, NAVY, MAT.SmoothPlastic)
			box(6.0, 3.7, 26.3, 17.0, 4.0, 30.3, TOPC, MAT.SmoothPlastic)
			for k = 0, 2 do
				local x = 6.3 + k * 2.4
				box(x, 0.8, 30.0, x + 2.2, 3.55, 30.08, CAB, MAT.SmoothPlastic, 0, true)
				box(x + 0.3, 2.7, 30.08, x + 0.42, 3.1, 30.2, DARK, MAT.Metal, 0, true)
			end

			-- РАКОВИНА (розовая, на ножках, с краном и красной трубой)
			box(13.4, Y0, 26.4, 16.8, 3.7, 30.0, NAVY, MAT.SmoothPlastic)
			for k = 0, 1 do
				local x = 13.6 + k * 1.6
				box(x, 0.8, 30.0, x + 1.5, 3.55, 30.08, CAB, MAT.SmoothPlastic, 0, true)
				box(x + 0.2, 2.7, 30.08, x + 0.32, 3.1, 30.2, DARK, MAT.Metal, 0, true)
			end
			local PINKS = C(220, 168, 168)
			box(13.7, 4.0, 26.6, 16.5, 4.3, 29.7, C(188, 132, 136), MAT.SmoothPlastic, 0, true)
			box(13.7, 4.3, 26.6, 16.5, 5.1, 26.9, PINKS, MAT.SmoothPlastic, 0, true)
			box(13.7, 4.3, 29.4, 16.5, 5.1, 29.7, PINKS, MAT.SmoothPlastic, 0, true)
			box(13.7, 4.3, 26.9, 14.0, 5.1, 29.4, PINKS, MAT.SmoothPlastic, 0, true)
			box(16.2, 4.3, 26.9, 16.5, 5.1, 29.4, PINKS, MAT.SmoothPlastic, 0, true)
			box(13.7, 5.1, 26.35, 16.5, 6.5, 26.7, PINKS, MAT.SmoothPlastic, 0, true)
			wcyl(15.1, 5.7, 27.0, 0.35, 1.2, METAL, MAT.Metal, "y", true)
			box(14.95, 6.2, 27.0, 15.25, 6.5, 28.3, METAL, MAT.Metal, 0, true)
			wcyl(14.3, 5.4, 26.9, 0.4, 0.5, C(60, 60, 66), MAT.Metal, "y", true)
			wcyl(15.9, 5.4, 26.9, 0.4, 0.5, C(60, 60, 66), MAT.Metal, "y", true)
			wcyl(16.9, 1.8, 27.3, 0.3, 3.0, C(190, 40, 40), MAT.Metal, "y", true) -- красная труба

			-- ПРЕДМЕТЫ НА ЗАПАДНОМ СТОЛЕ
			box(2.9, TOP, 27.0, 5.6, TOP + 1.3, 29.6, C(34, 34, 38), MAT.Metal, 0, true)
			for i = 0, 2 do
				box(5.6, TOP + 0.15 + i * 0.4, 27.1, 5.66, TOP + 0.45 + i * 0.4, 29.5, C(72, 72, 80), MAT.Metal, 0, true)
				box(5.66, TOP + 0.25 + i * 0.4, 28.0, 5.72, TOP + 0.35 + i * 0.4, 28.6, C(190, 190, 186), MAT.Metal, 0, true)
			end
			box(3.1, TOP, 30.2, 5.5, TOP + 1.5, 32.4, C(64, 66, 72), MAT.Metal, 0, true)
			for i = 0, 2 do for j = 0, 1 do
				box(5.5, TOP + 0.2 + j * 0.65, 30.35 + i * 0.65, 5.56, TOP + 0.7 + j * 0.65, 30.9 + i * 0.65, C(26, 28, 32), MAT.SmoothPlastic, 0, true)
			end end
			tripod(4.2, 34.2, 2.2)
			tripod(4.2, 37.6, 2.6)
			rod(4.2, TOP + 5.5, 37.6, 4.2, TOP + 6.3, 36.6, 0.1, C(240, 240, 240), MAT.SmoothPlastic)
			rod(4.2, TOP + 6.3, 36.6, 4.2, TOP + 5.6, 35.4, 0.1, C(240, 240, 240), MAT.SmoothPlastic)
			-- настольная лампа
			box(2.8, TOP, 44.6, 4.2, TOP + 0.15, 45.8, METAL, MAT.Metal, 0, true)
			rod(3.5, TOP + 0.15, 45.2, 3.5, TOP + 2.2, 45.2, 0.12, METAL, MAT.Metal)
			rod(3.5, TOP + 2.2, 45.2, 3.5, TOP + 2.8, 46.2, 0.12, METAL, MAT.Metal)
			wcyl(3.5, TOP + 2.7, 46.5, 0.95, 0.9, C(204, 204, 198), MAT.Metal, "z", true)
			-- розовый чайник/штука и треугольник
			ball(4.8, TOP + 0.7, 47.0, 1.4, C(214, 150, 190), MAT.SmoothPlastic).CanCollide = false
			ball(4.8, TOP + 1.5, 47.0, 0.5, C(230, 170, 205), MAT.SmoothPlastic).CanCollide = false
			ball(3.9, TOP + 0.4, 47.4, 0.8, C(214, 150, 190), MAT.SmoothPlastic).CanCollide = false
			do
				local w = Instance.new("WedgePart")
				w.Anchored = true; w.CanCollide = false; w.CanTouch = false
				w.Size = Vector3.new(0.08, 1.2, 1.6)
				w.CFrame = CFrame.new(at(3.3, TOP + 0.05, 44.0))
				w.Color = C(40, 40, 44); w.Material = MAT.SmoothPlastic; w.Parent = folder
			end

			-- ПРЕДМЕТЫ НА СЕВЕРНОМ СТОЛЕ
			box(6.5, TOP, 26.8, 8.8, TOP + 1.9, 29.2, C(206, 176, 112), MAT.Wood, 0, true)
			box(9.1, TOP, 27.0, 11.4, TOP + 1.5, 29.2, C(52, 104, 72), MAT.Metal, 0, true)
			box(9.3, TOP + 0.85, 29.2, 10.2, TOP + 1.3, 29.26, C(200, 224, 170), MAT.SmoothPlastic, 0, true)
			for i = 0, 2 do wcyl(9.4 + i * 0.55, TOP + 0.45, 29.26, 0.32, 0.1, C(30, 30, 34), MAT.Metal, "z", true) end
			wcyl(10.9, TOP + 0.6, 29.26, 0.5, 0.1, C(220, 60, 50), MAT.SmoothPlastic, "z", true)
			for i = 0, 3 do
				glass(11.8 + i * 0.4, TOP + 1.0, 27.1, 0.25, 1.0, 0.4)
				wcyl(11.8 + i * 0.4, TOP + 0.8, 27.1, 0.18, 0.5, ({ C(220, 60, 60), C(80, 200, 100), C(240, 200, 60), C(90, 150, 230) })[i + 1], MAT.SmoothPlastic, "y", true)
			end
			box(11.6, TOP, 26.7, 13.4, TOP + 0.45, 27.5, WOOD, MAT.Wood, 0, true)
			glass(12.0, TOP + 0.7, 28.8, 1.1, 1.4, 0.5)
			wcyl(12.0, TOP + 0.4, 28.8, 0.95, 0.8, C(204, 52, 52), MAT.SmoothPlastic, "y", true)
			glass(13.1, TOP + 0.6, 28.8, 1.0, 1.2, 0.5)
			wcyl(13.1, TOP + 0.4, 28.8, 0.85, 0.7, C(72, 150, 92), MAT.SmoothPlastic, "y", true)

			-- ПРОБКОВАЯ ДОСКА с записками и красными нитями + часы + плакат
			box(6.3, 6.2, 26.35, 13.1, 9.4, 26.6, WOOD, MAT.Wood, 0, true)
			box(6.5, 6.4, 26.35, 12.9, 9.2, 26.68, C(214, 176, 108), MAT.SmoothPlastic, 0, true)
			local notes = { { 7.1, 8.4 }, { 8.4, 7.2 }, { 9.7, 8.5 }, { 10.9, 7.5 }, { 11.9, 8.7 }, { 9.3, 6.8 } }
			local ncol = { C(238, 236, 170), C(190, 228, 170), C(240, 230, 190) }
			for i, n in ipairs(notes) do
				box(n[1] - 0.45, n[2] - 0.5, 26.68, n[1] + 0.45, n[2] + 0.5, 26.74, ncol[i % 3 + 1], MAT.SmoothPlastic, 0, true)
				box(n[1] - 0.07, n[2] + 0.32, 26.74, n[1] + 0.07, n[2] + 0.46, 26.82, C(210, 40, 40), MAT.SmoothPlastic, 0, true)
			end
			for i = 1, #notes - 1 do
				local a, b = notes[i], notes[i + 1]
				rod(a[1], a[2] + 0.4, 26.85, b[1], b[2] + 0.4, 26.85, 0.05, C(190, 30, 30), MAT.SmoothPlastic)
			end
			rod(notes[1][1], notes[1][2] + 0.4, 26.85, notes[4][1], notes[4][2] + 0.4, 26.85, 0.05, C(190, 30, 30), MAT.SmoothPlastic)
			rod(notes[3][1], notes[3][2] + 0.4, 26.85, notes[6][1], notes[6][2] + 0.4, 26.85, 0.05, C(190, 30, 30), MAT.SmoothPlastic)
			wcyl(14.6, 8.2, 26.55, 2.4, 0.4, C(52, 52, 58), MAT.Metal, "z", true)
			wcyl(14.6, 8.2, 26.78, 2.0, 0.08, C(246, 246, 240), MAT.SmoothPlastic, "z", true)
			rod(14.6, 8.2, 26.86, 14.6, 8.95, 26.86, 0.1, C(20, 20, 24))
			rod(14.6, 8.2, 26.86, 15.2, 8.2, 26.86, 0.12, C(20, 20, 24))
			box(15.3, 6.9, 26.35, 16.9, 9.3, 26.55, C(54, 54, 60), MAT.Metal, 0, true)
			box(15.45, 7.6, 26.55, 16.75, 9.15, 26.6, C(168, 206, 190), MAT.SmoothPlastic, 0, true)
			box(15.45, 7.6, 26.6, 16.75, 8.2, 26.64, C(70, 118, 84), MAT.SmoothPlastic, 0, true)
			box(15.95, 8.2, 26.6, 16.25, 8.7, 26.64, C(240, 244, 244), MAT.SmoothPlastic, 0, true)
			box(15.45, 7.0, 26.55, 16.75, 7.5, 26.6, C(160, 160, 160), MAT.SmoothPlastic, 0, true)

			-- СТИРАЛКА (бежевая) и СУШИЛКА (бирюзовая) у восточной стены
			box(14.6, Y0, 38.6, 17.55, 4.4, 42.2, C(214, 198, 152), MAT.Metal)
			box(14.7, 4.4, 38.7, 17.4, 4.55, 42.0, C(232, 218, 170), MAT.SmoothPlastic)
			wcyl(15.7, 4.6, 40.4, 2.2, 0.08, C(190, 176, 132), MAT.SmoothPlastic, "y", true)
			box(16.6, 4.55, 38.7, 17.5, 5.4, 42.1, C(200, 184, 140), MAT.SmoothPlastic, 0, true)
			knob(16.55, 5.0, 39.4, 0.5); knob(16.55, 5.0, 40.4, 0.5); box(16.55, 4.8, 41.1, 16.62, 5.2, 41.7, C(60, 60, 64), MAT.SmoothPlastic, 0, true)
			box(14.6, Y0, 42.6, 17.55, 4.6, 46.4, C(90, 130, 142), MAT.Metal)
			box(16.8, 4.6, 42.6, 17.55, 5.5, 46.4, C(76, 112, 122), MAT.SmoothPlastic, 0, true)
			knob(16.75, 5.05, 43.3, 0.5); knob(16.75, 5.05, 44.4, 0.5); knob(16.75, 5.05, 45.5, 0.5)
			box(14.55, 1.0, 43.0, 14.6, 3.9, 46.0, C(128, 162, 172), MAT.SmoothPlastic, 0, true)
			wcyl(14.5, 2.45, 44.5, 2.0, 0.08, C(40, 56, 62), MAT.SmoothPlastic, "x", true)
			wcyl(14.46, 2.45, 44.5, 1.5, 0.06, C(110, 150, 160), MAT.Glass, "x", true, 0.3)
			wcyl(14.44, 3.3, 45.5, 0.3, 0.1, C(40, 56, 62), MAT.Metal, "x", true)

			-- МЕТАЛЛИЧЕСКИЙ СТЕЛЛАЖ с чёрным ящиком
			for _, px in ipairs({ 14.3, 17.3 }) do for _, pz in ipairs({ 48.5, 55.5 }) do
				box(px, Y0, pz, px + 0.3, 7.3, pz + 0.3, C(150, 150, 146), MAT.Metal)
			end end
			for _, yb in ipairs({ 0.9, 2.8, 4.7, 6.6 }) do box(14.3, yb, 48.5, 17.6, yb + 0.2, 55.8, C(168, 166, 160), MAT.Metal, 0, true) end
			box(15.0, 3.0, 50.0, 16.6, 4.3, 52.4, C(36, 36, 40), MAT.Metal, 0, true)
			box(15.2, 4.9, 53.0, 16.8, 5.9, 55.0, C(206, 176, 112), MAT.Wood, 0, true)
			wcyl(15.4, 1.5, 50.4, 0.8, 1.2, C(190, 190, 186), MAT.Metal, "y", true)
			wcyl(16.4, 1.4, 53.2, 0.9, 1.0, C(70, 130, 180), MAT.Metal, "y", true)

			-- ЛАМПЫ ПОД ПОТОЛКОМ (холодный белый, не пересвечивают)
			bulb(10, 9.55, 33, C(224, 240, 236))
			bulb(10, 9.55, 45, C(224, 240, 236))
			bulb(10, 9.55, 53, C(224, 240, 236))

			----------------------------------------------------------------
			-- ЛАЗЕРНЫЙ ПИСТОЛЕТ РИКА: модель (по фото), место на западном столе, подбор и выстрел
			----------------------------------------------------------------
			local LASER = "Лазерный пистолет Рика"
			local S1 = 0.0045
			local function P(xp, yp) return Vector3.new(0, (262 - yp) * S1, -(xp - 118) * S1) end
			local TEAL, TEALD, ORG = C(104, 158, 160), C(70, 112, 116), C(224, 108, 38)
			local ZY = CFrame.Angles(0, math.pi / 2, 0)
			-- spec: { имя, форма, размер, CFrame относительно рукоятки, цвет, материал, прозрачность }
			local spec = {}
			local function add(name, shape, size, cf, color, mat, tr) spec[#spec + 1] = { name, shape, size, cf, color, mat or MAT.SmoothPlastic, tr or 0 } end
			local BLK, CYLS = Enum.PartType.Block, Enum.PartType.Cylinder
			local g0 = P(118, 262)
			-- рукоятка (Handle) — чуть откинута назад
			add("Handle", BLK, Vector3.new(0.34, 0.62, 0.5), CFrame.new(), TEAL)
			add("GripPanelL", BLK, Vector3.new(0.04, 0.4, 0.3), CFrame.new(-0.18, -0.02, 0.02), TEALD)
			add("GripPanelR", BLK, Vector3.new(0.04, 0.4, 0.3), CFrame.new(0.18, -0.02, 0.02), TEALD)
			for i = -1, 1 do
				add("GripLineL" .. i, BLK, Vector3.new(0.045, 0.03, 0.34), CFrame.new(-0.2, -0.02 + i * 0.12, 0.02) * CFrame.Angles(math.rad(25), 0, 0), C(40, 66, 70))
				add("GripLineR" .. i, BLK, Vector3.new(0.045, 0.03, 0.34), CFrame.new(0.2, -0.02 + i * 0.12, 0.02) * CFrame.Angles(math.rad(25), 0, 0), C(40, 66, 70))
			end
			-- корпус-цилиндр вдоль Z
			add("Body", CYLS, Vector3.new(1.28, 0.68, 0.68), CFrame.new(P(167, 127)) * ZY, TEAL)
			add("NoseA", CYLS, Vector3.new(0.12, 0.62, 0.62), CFrame.new(P(318, 127)) * ZY, TEALD)
			add("NoseB", CYLS, Vector3.new(0.16, 0.5, 0.5), CFrame.new(P(340, 127)) * ZY, TEALD)
			add("NoseC", CYLS, Vector3.new(0.18, 0.36, 0.36), CFrame.new(P(367, 127)) * ZY, TEALD)
			add("Neck", CYLS, Vector3.new(0.4, 0.1, 0.1), CFrame.new(P(420, 127)) * ZY, C(180, 90, 36))
			add("Ring1", CYLS, Vector3.new(0.06, 0.34, 0.34), CFrame.new(P(405, 127)) * ZY, ORG)
			add("Ring2", CYLS, Vector3.new(0.06, 0.34, 0.34), CFrame.new(P(445, 127)) * ZY, ORG)
			add("Cup1", CYLS, Vector3.new(0.06, 0.28, 0.28), CFrame.new(P(478, 127)) * ZY, ORG)
			add("Cup2", CYLS, Vector3.new(0.06, 0.4, 0.4), CFrame.new(P(490, 127)) * ZY, ORG)
			add("Cup3", CYLS, Vector3.new(0.06, 0.54, 0.54), CFrame.new(P(503, 127)) * ZY, ORG)
			add("Cup4", CYLS, Vector3.new(0.06, 0.7, 0.7), CFrame.new(P(517, 127)) * ZY, ORG)
			-- салатовая капсула сверху и серые блоки
			add("Lime", CYLS, Vector3.new(0.34, 0.2, 0.2), CFrame.new(P(172, 38)) * ZY, C(190, 232, 60))
			add("Vent", BLK, Vector3.new(0.3, 0.12, 0.42), CFrame.new(P(86, 40)), TEALD)
			for i = -1, 1 do add("VentL" .. i, BLK, Vector3.new(0.32, 0.03, 0.04), CFrame.new(P(86, 34) + Vector3.new(0, 0.07, i * 0.1)), C(36, 60, 64)) end
			add("TopBlock", BLK, Vector3.new(0.3, 0.1, 0.34), CFrame.new(P(250, 52)), C(112, 114, 116))
			add("Fin1", BLK, Vector3.new(0.05, 0.1, 0.3), CFrame.new(P(246, 40) + Vector3.new(-0.08, 0.02, 0)), C(120, 122, 124))
			add("Fin2", BLK, Vector3.new(0.05, 0.1, 0.3), CFrame.new(P(262, 40) + Vector3.new(0.08, 0.02, 0)), C(120, 122, 124))
			-- жёлтая планка и красная кнопка с обеих сторон
			for _, sx in ipairs({ -1, 1 }) do
				add("Slider" .. sx, BLK, Vector3.new(0.03, 0.07, 0.62), CFrame.new(P(112, 127) + Vector3.new(sx * 0.345, 0, 0)), C(238, 200, 40))
				add("BtnRing" .. sx, CYLS, Vector3.new(0.03, 0.26, 0.26), CFrame.new(P(186, 132) + Vector3.new(sx * 0.345, 0, 0)), C(238, 200, 40))
				add("Btn" .. sx, CYLS, Vector3.new(0.03, 0.17, 0.17), CFrame.new(P(186, 132) + Vector3.new(sx * 0.355, 0, 0)), C(224, 36, 48), MAT.Neon)
			end
			-- спусковая скоба
			add("Guard1", BLK, Vector3.new(0.1, 0.05, 0.3), CFrame.new(P(206, 200)) * CFrame.Angles(math.rad(-30), 0, 0), TEAL)
			add("Guard2", BLK, Vector3.new(0.1, 0.22, 0.05), CFrame.new(P(222, 218)), TEAL)
			add("Trigger", BLK, Vector3.new(0.06, 0.2, 0.06), CFrame.new(P(188, 204)) * CFrame.Angles(math.rad(15), 0, 0), C(50, 80, 84))
			local TIPCF = CFrame.new(P(526, 127))

			local function mkPart(s)
				local p = Instance.new("Part")
				p.Name = s[1]; p.Shape = s[2]; p.Size = s[3]
				p.Color = s[5]; p.Material = s[6]; p.Transparency = s[7]
				p.CanCollide = false; p.CanTouch = false; p.CanQuery = false
				p.TopSurface = Enum.SurfaceType.Smooth; p.BottomSurface = Enum.SurfaceType.Smooth
				return p
			end

			local function buildLaserTool()
				local t = Instance.new("Tool")
				t.Name = LASER
				t.ToolTip = "Лазерный пистолет Рика — тапни или кликни, чтобы выстрелить"
				t.CanBeDropped = false
				t.RequiresHandle = true
				t.GripPos = Vector3.new(0, 0.05, 0)
				local handle = mkPart(spec[1])
				handle.Anchored = false; handle.Massless = true
				handle.Parent = t
				for _, s in ipairs(spec) do
					if s[1] ~= "Handle" then
						local p = mkPart(s)
						p.Anchored = false; p.Massless = true
						local w = Instance.new("Weld")
						w.Part0 = handle; w.Part1 = p; w.C0 = s[4]
						w.Parent = p
						p.Parent = t
					end
				end
				local tip = Instance.new("Part")
				tip.Name = "Tip"; tip.Size = Vector3.new(0.1, 0.1, 0.1); tip.Transparency = 1
				tip.CanCollide = false; tip.CanQuery = false; tip.CanTouch = false; tip.Massless = true
				local tw = Instance.new("Weld"); tw.Part0 = handle; tw.Part1 = tip; tw.C0 = TIPCF; tw.Parent = tip
				tip.Parent = t

				local lastShot = 0
				t.Activated:Connect(function()
					local now = os.clock()
					if now - lastShot < 0.22 then return end
					lastShot = now
					local origin = tip.Position
					local mouse = lp:GetMouse()
					local char = lp.Character
					pcall(function() mouse.TargetFilter = char end)
					local aim = mouse.Hit.Position
					local dir = aim - origin
					if dir.Magnitude < 1 then dir = workspace.CurrentCamera.CFrame.LookVector * 100 end
					dir = dir.Unit * 400
					local params = RaycastParams.new()
					params.FilterType = Enum.RaycastFilterType.Exclude
					params.FilterDescendantsInstances = { char, t }
					local res = workspace:Raycast(origin, dir, params)
					local hit = res and res.Position or (origin + dir)
					local len = (hit - origin).Magnitude
					local GREEN = Color3.fromRGB(90, 255, 120)
					local function beam(th, color, life)
						local b = Instance.new("Part")
						b.Anchored = true; b.CanCollide = false; b.CanQuery = false; b.CanTouch = false; b.CastShadow = false
						b.Material = Enum.Material.Neon; b.Color = color
						b.Size = Vector3.new(th, th, len)
						b.CFrame = CFrame.lookAt(origin:Lerp(hit, 0.5), hit)
						b.Parent = fx
						TweenService:Create(b, TweenInfo.new(life), { Transparency = 1, Size = Vector3.new(th * 0.2, th * 0.2, len) }):Play()
						Debris:AddItem(b, life + 0.1)
					end
					beam(0.26, GREEN, 0.28)
					beam(0.09, Color3.fromRGB(235, 255, 235), 0.2)
					local function flash(pos, d0, d1, life, bright)
						local f = Instance.new("Part")
						f.Shape = Enum.PartType.Ball; f.Anchored = true; f.CanCollide = false; f.CanQuery = false; f.CanTouch = false; f.CastShadow = false
						f.Material = Enum.Material.Neon; f.Color = GREEN; f.Size = Vector3.new(d0, d0, d0); f.Position = pos; f.Parent = fx
						TweenService:Create(f, TweenInfo.new(life), { Size = Vector3.new(d1, d1, d1), Transparency = 1 }):Play()
						Debris:AddItem(f, life + 0.1)
					end
					flash(origin, 0.7, 0.15, 0.15, 2)
					if res then flash(hit, 0.4, 1.8, 0.3, 3) end
				end)
				return t
			end

			-- v6: пистолет лежит на ЗАПАДНОМ СТОЛЕ лаборатории (у стены, между штативами и лампой); старый столик убран
			local PX, PZ = 4.4, 41.3
			local ring = box(3.0, TOP, 39.8, 5.8, TOP + 0.05, 42.8, C(80, 255, 110), NEONM, 0, true) -- зелёная подложка под пистолетом
			local rl = { Enabled = true }

			local disp, dispOrig = {}, {}
			local baseCF = CFrame.new(at(3.9, TOP + 0.4, 40.5)) * CFrame.Angles(0, math.rad(180), 0) * CFrame.Angles(0, 0, math.rad(90)) -- пистолет ЛЕЖИТ на боку, дулом вдоль стола
			local mainPart
			for _, s in ipairs(spec) do
				local p = mkPart(s)
				p.Anchored = true
				p.CFrame = baseCF * s[4]
				p.CanQuery = true
				p.Parent = folder
				disp[#disp + 1] = p; dispOrig[p] = s[7]
				if s[1] == "Body" then mainPart = p end
			end
			disp[#disp + 1] = ring; dispOrig[ring] = 0
			local anchor = Instance.new("Part")
			anchor.Name = "LaserPickup"; anchor.Anchored = true; anchor.CanCollide = false; anchor.CanTouch = false; anchor.Transparency = 1
			anchor.Size = Vector3.new(3, 2, 3); anchor.CFrame = CFrame.new(at(PX, TOP + 1.0, PZ)); anchor.Parent = folder
			local gui = Instance.new("BillboardGui")
			gui.Size = UDim2.fromOffset(190, 44); gui.StudsOffset = Vector3.new(0, 2.6, 0); gui.AlwaysOnTop = false; gui.MaxDistance = 40; gui.LightInfluence = 0
			gui.Parent = anchor
			local gl = Instance.new("TextLabel")
			gl.BackgroundTransparency = 1; gl.Size = UDim2.fromScale(1, 1); gl.TextScaled = true; gl.Font = Enum.Font.Code
			gl.Text = "ЛАЗЕРНЫЙ ПИСТОЛЕТ РИКА\nнажми, чтобы взять"; gl.TextColor3 = C(150, 255, 170); gl.TextStrokeTransparency = 0.3
			gl.Parent = gui

			local function hasLaser()
				local bp, c = lp:FindFirstChildOfClass("Backpack"), lp.Character
				return (bp and bp:FindFirstChild(LASER)) or (c and c:FindFirstChild(LASER))
			end
			local function showDisplay(on)
				for _, p in ipairs(disp) do p.Transparency = on and dispOrig[p] or 1 end
				gui.Enabled = on
				rl.Enabled = on
			end
			local function giveLaser()
				if hasLaser() then pcall(toast, "Пистолет Рика уже у тебя — достань его из инвентаря") return end
				local t = buildLaserTool()
				local bp = lp:FindFirstChildOfClass("Backpack")
				if bp then t.Parent = bp
				elseif lp.Character then t.Parent = lp.Character
				else t:Destroy() return end
				showDisplay(false)
				pcall(toast, "Взял лазерный пистолет Рика! Достань из инвентаря и стреляй", 3.2)
			end
			local pp = Instance.new("ProximityPrompt")
			pp.ActionText = "Взять"; pp.ObjectText = LASER; pp.HoldDuration = 0
			pp.MaxActivationDistance = 11; pp.RequiresLineOfSight = false
			pp.Parent = anchor
			if SM.fancyPrompt then SM.fancyPrompt(pp) end
			pp.Triggered:Connect(giveLaser)
			SM.giveLaser = giveLaser
			for _, host in ipairs({ anchor, mainPart }) do
				if host then
					local cd = Instance.new("ClickDetector")
					cd.MaxActivationDistance = 12
					cd.Parent = host
					cd.MouseClick:Connect(giveLaser)
				end
			end
			task.spawn(function()
				while folder.Parent do
					task.wait(1.5)
					local has = hasLaser() and true or false
					pp.Enabled = not has
					if not has then showDisplay(true) end
				end
			end)
		end

		----------------------------------------------------------------
		-- 2 ЭТАЖ: КОМНАТА САММЕР (розовая)
		----------------------------------------------------------------
		bed(55, 3.6, 62, 13, 12.3, C(246, 176, 206), "n")
		cyl(63.6, 12.3, 11.2, 3, 1.8, C(172, 92, 204), MAT.Fabric)                               -- фиолетовый пуф
		box(54, 12.3, 15, 61, 12.4, 19, C(190, 230, 176), MAT.Fabric, 0, true)                  -- салатовый коврик
		box(63, 12.3, 5, 65.6, 17, 8.5, WOOD, MAT.Wood); lamp(64.3, 17, 6.8)                     -- комод + лампа на нём
		shelf(51.4, 3.8, 52.5, 7.2, 12.3, 5.5, true)
		box(63, 12.3, 16.4, 65.4, 15, 19.6, WOOD, MAT.Wood); chair(61.2, 17.8, -1, 0, 12.3, C(172, 92, 204)) -- стол + стул лицом к столу
		box(52, 12.3, 16, 54.6, 15, 19.6, WOOD, MAT.Wood)
		curtainsZ(55, 63, 3.8, 12, C(250, 190, 215))
		pic(53.3, 18.2, 19.5, "z", 3, 2.4, C(250, 140, 170)); pic(63.8, 18.2, 19.5, "z", 2.2, 3, C(170, 110, 210))
		pic(65.5, 18, 13.5, "x", 2.4, 3, C(110, 170, 210))
		bulb(58.5, 22.65, 12)

		----------------------------------------------------------------
		-- МОРТИ (зелёная)
		----------------------------------------------------------------
		bed(68, 3.6, 75, 13, 12.3, C(90, 150, 200), "n")
		box(77, 12.3, 3.8, 81.6, 15, 7.4, WOOD, MAT.Wood); chair(79.4, 9.6, 0, 1, 12.3, C(60, 150, 90))   -- стул лицом к столу
		box(70, 12.3, 15, 78, 12.4, 19, C(220, 190, 90), MAT.Fabric, 0, true)
		curtainsZ(70, 78, 3.8, 12, C(240, 240, 190))
		pic(66.5, 18, 15, "x", 2.4, 3, C(230, 110, 70))
		bulb(74, 22.65, 12)

		----------------------------------------------------------------
		-- КОМНАТА ДЖЕРРИ И БЕТ + БАЛКОН
		----------------------------------------------------------------
		bed(64.6, 33, 74, 40, 12.3, C(186, 60, 70), "w")                                          -- изголовье у западной стены
		box(64.6, 12.3, 31, 66.6, 15, 32.8, WOOD, MAT.Wood); box(64.6, 12.3, 40.2, 66.6, 15, 42, WOOD, MAT.Wood)
		lamp(65.6, 15, 31.9); lamp(65.6, 15, 41.1)
		box(74.4, 12.3, 34.5, 76.4, 14, 38.5, C(90, 60, 40), MAT.Wood)                           -- банкетка у кровати
		box(79.4, 12.3, 39, 81.6, 18, 43.4, WOOD, MAT.Wood)                                      -- шкаф (не закрывает окно)
		pic(64.5, 18.2, 36.5, "x", 4, 2.6, C(130, 160, 220))
		pic(67, 18.5, 28.6, "z", 3.4, 2.4, C(130, 160, 220)); pic(78.6, 18.5, 28.6, "z", 3, 2.4, C(240, 190, 90))
		chair(65.8, 45.9, 0, 1, 12.3, WHITE); chair(80.2, 45.9, 0, 1, 12.3, WHITE)               -- балконные стулья
		bulb(73, 22.65, 36)

		----------------------------------------------------------------
		-- ВАННАЯ И КОРИДОР 2 ЭТАЖА
		----------------------------------------------------------------
		box(51.6, 12.3, 31.6, 54.4, 14.2, 37.6, WHITE, MAT.Marble)                              -- ванна (дальше от двери)
		box(52, 14.2, 32, 54, 14.3, 37.2, C(150, 200, 230), MAT.Glass, 0.4, true)
		box(56, 12.3, 36, 57.6, 14.2, 37.7, WHITE, MAT.Marble); box(56, 14.2, 37.1, 57.6, 16.2, 37.7, WHITE, MAT.Marble) -- унитаз
		box(56.2, 12.3, 33, 57.6, 15.2, 35.2, WHITE, MAT.Marble)                                -- раковина
		pic(57.5, 17.5, 34.1, "x", 2.2, 3, C(190, 222, 238))                                    -- зеркало над раковиной
		box(55, 12.3, 30, 57, 12.4, 32, C(120, 180, 200), MAT.Fabric, 0, true)                  -- коврик
		box(52, 12.3, 21, 57, 12.4, 27, C(196, 100, 90), MAT.Fabric, 0, true)                   -- ковёр в коридоре
		pic(54, 17, 20.6, "z", 3.4, 2.6, C(110, 170, 210)); pic(63.6, 17, 20.6, "z", 2.2, 3, C(240, 190, 90))
		pic(79, 17, 20.6, "z", 3, 2.4, C(150, 110, 200))
		bulb(54.5, 22.65, 33); bulb(66, 22.65, 24)

		----------------------------------------------------------------
		-- ДВЕРИ: открываются сами, когда ты рядом
		----------------------------------------------------------------
		local doors = {}
		-- деталь двери в «замкнутом» положении (pm/pp — смещение от плоскости стены)
		local function wb(al, p, s, e, ya, yb, pm, pp, c, mat, tr)
			if e - s < 0.05 or yb - ya < 0.05 then return end
			if al then box(s, ya, p + pm, e, yb, p + pp, c, mat, tr)
			else box(p + pm, ya, s, p + pp, yb, e, c, mat, tr) end
		end
		-- одна створка от s1 до s2 вдоль стены; возвращает список деталей
		local function buildLeaf(spec, s1, s2, hingeAtS1, style)
			local parts = {}
			collector = parts
			local al, p = spec.alongX, spec.p
			local ya, yb = spec.y0 + 0.3, spec.y0 + DOOR
			local baseC, panelC, glassy = C(247, 244, 236), C(226, 218, 200), false
			if style == "front" then baseC, panelC, glassy = C(104, 66, 46), C(84, 50, 34), true
			elseif style == "wood" then baseC, panelC = C(196, 156, 108), C(170, 130, 88)
			elseif style == "glass" then glassy = true end
			if style == "glass" then
				wb(al, p, s1, s2, ya, yb, -0.06, 0.06, GLASS, MAT.Glass, 0.5)
				wb(al, p, s1, s1 + 0.5, ya, yb, -0.14, 0.14, WHITE, MAT.Wood); wb(al, p, s2 - 0.5, s2, ya, yb, -0.14, 0.14, WHITE, MAT.Wood)
				wb(al, p, s1, s2, ya, ya + 0.6, -0.14, 0.14, WHITE, MAT.Wood); wb(al, p, s1, s2, yb - 0.6, yb, -0.14, 0.14, WHITE, MAT.Wood)
				wb(al, p, s1, s2, ya + 3.9, ya + 4.3, -0.14, 0.14, WHITE, MAT.Wood)
			else
				wb(al, p, s1, s2, ya, yb, -0.14, 0.14, baseC, MAT.Wood)
				local a1, a2 = s1 + 0.55, s2 - 0.55
				wb(al, p, a1, a2, ya + 0.7, ya + 3.9, -0.2, 0.2, panelC, MAT.Wood)
				if glassy then
					wb(al, p, a1, a2, ya + 4.5, yb - 0.7, -0.17, 0.17, WHITE, MAT.Wood)
					wb(al, p, a1 + 0.3, a2 - 0.3, ya + 4.8, yb - 1.0, -0.2, 0.2, GLASS, MAT.Glass, 0.45)
				else
					wb(al, p, a1, a2, ya + 4.5, yb - 0.7, -0.2, 0.2, panelC, MAT.Wood)
				end
			end
			-- ручка с обеих сторон
			local kp = hingeAtS1 and (s2 - 0.7) or (s1 + 0.7)
			local gold = C(222, 184, 80)
			wb(al, p, kp - 0.25, kp + 0.25, ya + 3.9, ya + 4.4, 0.14, 0.62, gold, MAT.Metal)
			wb(al, p, kp - 0.25, kp + 0.25, ya + 3.9, ya + 4.4, -0.62, -0.14, gold, MAT.Metal)
			collector = nil
			return parts
		end

		local function buildSwing(spec, d)
			local s1, s2 = spec.g1 + 0.4, spec.g2 - 0.4
			local al, p = spec.alongX, spec.p
			local defs = {}
			if (spec.g2 - spec.g1) >= 5.6 then -- двустворчатая
				local mid = (s1 + s2) / 2
				defs[1] = { a = s1, b = mid, hingeS1 = true }
				defs[2] = { a = mid, b = s2, hingeS1 = false }
			else
				defs[1] = { a = s1, b = s2, hingeS1 = (spec.hinge ~= "e") }
			end
			d.type, d.leaves, d.all = "swing", {}, {}
			for _, df in ipairs(defs) do
				local parts = buildLeaf(spec, df.a, df.b, df.hingeS1, spec.style)
				local hc = df.hingeS1 and df.a or df.b
				local hv = al and at(hc, spec.y0, p) or at(p, spec.y0, hc)
				local hinge = CFrame.new(hv)
				local rels = {}
				for i, part in ipairs(parts) do
					rels[i] = hinge:ToObjectSpace(part.CFrame)
					d.all[#d.all + 1] = part
				end
				d.leaves[#d.leaves + 1] = { parts = parts, rels = rels, hinge = hinge, dir = df.hingeS1 and 1 or -1 }
			end
			d.reach, d.dur = 6.5, 0.55
		end

		local function buildSlide(spec, d)
			local al, p = spec.alongX, spec.p
			local s1, s2 = spec.g1 + 0.3, spec.g2 - 0.3
			local mid = (s1 + s2) / 2
			local ya, yb = spec.y0 + 0.3, spec.y0 + DOOR - 0.3
			local FR = C(70, 70, 76)
			local function panel(sa, sb, pm, pp)
				local list = {}
				collector = list
				wb(al, p, sa, sb, ya, yb, pm, pp, GLASS, MAT.Glass, 0.55)
				wb(al, p, sa, sa + 0.35, ya, yb, pm - 0.03, pp + 0.03, FR, MAT.Metal)
				wb(al, p, sb - 0.35, sb, ya, yb, pm - 0.03, pp + 0.03, FR, MAT.Metal)
				wb(al, p, sa, sb, ya, ya + 0.4, pm - 0.03, pp + 0.03, FR, MAT.Metal)
				wb(al, p, sa, sb, yb - 0.4, yb, pm - 0.03, pp + 0.03, FR, MAT.Metal)
				collector = nil
				return list
			end
			local A = panel(s1, mid + 0.25, 0.1, 0.22)    -- неподвижная створка
			local B = panel(mid - 0.25, s2, -0.22, -0.1) -- ездит за неё
			d.type, d.parts, d.base, d.all = "slide", B, {}, {}
			for i, part in ipairs(B) do d.base[i] = part.CFrame; d.all[#d.all + 1] = part end
			for _, part in ipairs(A) do d.all[#d.all + 1] = part end
			d.dist = (mid - 0.25) - s1
			d.reach, d.dur = 9, 1.0
		end

		local function buildLift(spec, d)
			local al, p = spec.alongX, spec.p
			local s1, s2 = spec.g1 + 0.4, spec.g2 - 0.4
			local ya, yb = spec.y0 + 0.3, spec.y0 + DOOR
			local n = 4
			local ph = (yb - ya) / n
			local parts = {}
			collector = parts
			for i = 0, n - 1 do
				local a0, b0 = ya + i * ph, ya + (i + 1) * ph
				wb(al, p, s1, s2, a0 + 0.03, b0 - 0.03, -0.22, 0.22, C(226, 204, 158), MAT.Wood)
				if i == 2 then -- ряд окошек
					local cnt, gap = 5, 0.3
					local w = ((s2 - s1) - 1.6 - gap * (cnt - 1)) / cnt
					for k = 0, cnt - 1 do
						local ws = s1 + 0.8 + k * (w + gap)
						wb(al, p, ws, ws + w, a0 + 0.4, b0 - 0.4, 0.2, 0.26, GLASS, MAT.Glass, 0.4)
					end
				else
					wb(al, p, s1 + 0.4, s2 - 0.4, a0 + 0.35, b0 - 0.35, 0.2, 0.3, C(204, 180, 132), MAT.Wood)
				end
			end
			collector = nil
			d.type, d.parts, d.all, d.P0, d.S0 = "lift", parts, parts, {}, {}
			for i, part in ipairs(parts) do d.P0[i] = part.Position; d.S0[i] = part.Size end
			d.top = O.Y + spec.y0 + DOOR
			d.reach, d.dur = 9, 1.3
		end

		for _, spec in ipairs(doorSpecs) do
			local mid = (spec.g1 + spec.g2) / 2
			local d = { alongX = spec.alongX, half = (spec.g2 - spec.g1) / 2, alpha = 0, target = 0, side = 1, solid = true }
			d.center = spec.alongX and at(mid, spec.y0 + 4.5, spec.p) or at(spec.p, spec.y0 + 4.5, mid)
			if spec.kind == "s" then buildSlide(spec, d)
			elseif spec.kind == "g" then buildLift(spec, d)
			else buildSwing(spec, d) end
			doors[#doors + 1] = d
		end

		local function applyDoor(d)
			local e = d.alpha * d.alpha * (3 - 2 * d.alpha)
			if d.type == "swing" then
				local ang = math.rad(95) * e
				for _, lf in ipairs(d.leaves) do
					local th = d.side * lf.dir * ang
					if not d.alongX then th = -th end
					local rot = lf.hinge * CFrame.Angles(0, th, 0)
					for i, part in ipairs(lf.parts) do part.CFrame = rot * lf.rels[i] end
				end
			elseif d.type == "slide" then
				local off = (d.alongX and Vector3.new(-1, 0, 0) or Vector3.new(0, 0, -1)) * (d.dist * e)
				for i, part in ipairs(d.parts) do part.CFrame = d.base[i] + off end
			else -- ворота: секции сжимаются и уезжают под потолок
				local s = 1 - 0.94 * e
				for i, part in ipairs(d.parts) do
					local p0, s0 = d.P0[i], d.S0[i]
					part.Size = Vector3.new(s0.X, math.max(0.05, s0.Y * s), s0.Z)
					part.Position = Vector3.new(p0.X, d.top - (d.top - p0.Y) * s, p0.Z)
				end
			end
			local solid = d.alpha < 0.02
			if solid ~= d.solid then
				d.solid = solid
				for _, part in ipairs(d.all) do part.CanCollide = solid end
			end
		end

		local doorConn
		doorConn = RunService.Heartbeat:Connect(function(dt)
			if not folder.Parent then doorConn:Disconnect() return end
			local ch = lp.Character
			local hrp = ch and ch:FindFirstChild("HumanoidRootPart")
			local pos = hrp and hrp.Position
			for _, d in ipairs(doors) do
				local want = d.target
				if pos then
					local rel = pos - d.center
					if rel.Magnitude < 60 then
						local along = d.alongX and rel.X or rel.Z
						local across = d.alongX and rel.Z or rel.X
						local inY = math.abs(rel.Y)
						if d.target == 0 then
							if inY < 7 and math.abs(along) < d.half + 3 and math.abs(across) < d.reach then
								want = 1
								if d.alpha < 0.01 then d.side = (across >= 0) and 1 or -1 end -- открывается ОТ тебя
							end
						elseif inY > 9 or math.abs(along) > d.half + 6 or math.abs(across) > d.reach + 3 then
							want = 0
						end
					else
						want = 0
					end
				else
					want = 0
				end
				d.target = want
				local diff = want - d.alpha
				if diff ~= 0 then
					local step = dt / d.dur
					if math.abs(diff) <= step then d.alpha = want
					else d.alpha += step * (diff > 0 and 1 or -1) end
					applyDoor(d)
				end
			end
		end)

		----------------------------------------------------------------
		-- v6: ДВОР — забор, цветы, коврик, табличка, лампы у гаража
		----------------------------------------------------------------
		do
			local function fence(xa, xb)
				for x = xa, xb, 0.9 do box(x - 0.18, 0, 95.0, x + 0.18, 2.8, 95.22, WHITE, MAT.Wood, 0, true) end
				box(xa, 0.7, 95.22, xb, 1.0, 95.38, WHITE, MAT.Wood, 0, true)
				box(xa, 1.9, 95.22, xb, 2.2, 95.38, WHITE, MAT.Wood, 0, true)
			end
			fence(-60, 0.4); fence(19.6, 50.6); fence(61.6, 110)
			local fcols = { C(240, 90, 120), C(250, 210, 60), C(255, 255, 255), C(170, 110, 230) }
			for i, bx in ipairs({ 20, 25, 34, 40, 46, 66, 72 }) do
				local z = bx < 60 and 39.6 or 45.6
				for k = 1, 3 do
					ball(bx + (k - 2) * 1.0, 3.2 + (k % 2) * 0.3, z + 1.2, 0.55, fcols[(i + k) % 4 + 1], MAT.SmoothPlastic).CanCollide = false
				end
			end
			box(54.2, 0.3, 39.2, 58.2, 0.38, 40.6, C(110, 78, 52), MAT.Fabric, 0, true) -- коврик
			local plaque = box(49.3, 5.6, 38.35, 51.1, 7.0, 38.6, C(36, 36, 40), MAT.Metal, 0, true)
			local sg = Instance.new("SurfaceGui")
			sg.Face = Enum.NormalId.Back; sg.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud; sg.PixelsPerStud = 40; sg.Parent = plaque
			local tl = Instance.new("TextLabel")
			tl.BackgroundTransparency = 1; tl.Size = UDim2.fromScale(1, 1); tl.Text = "ВОТИМС"; tl.TextScaled = true
			tl.Font = Enum.Font.GothamBold; tl.TextColor3 = C(236, 196, 84); tl.Parent = sg
			for _, lx in ipairs({ 3.2, 16.8 }) do -- лампы у гаражных ворот
				local lp1 = cyl(lx, 7.0, 57.9, 0.9, 1.3, C(255, 232, 170), MAT.Neon, true)
				box(lx - 0.35, 8.3, 57.6, lx + 0.35, 8.5, 58.3, DARK, MAT.Metal, 0, true)
			end
		end

		----------------------------------------------------------------
		-- v6: СВЕТ ВНУТРИ ДОМА. Раньше в доме было слишком светло (солнце + общий свет карты).
		-- Теперь, пока ты внутри, общий свет мягко приглушается, а лампы под потолком дают тёплый свет.
		-- Вышел на улицу — всё возвращается как было.
		----------------------------------------------------------------
		do
			local Lighting = game:GetService("Lighting")
			local PROPS = { "Ambient", "OutdoorAmbient", "Brightness", "ExposureCompensation", "ColorShift_Top", "EnvironmentDiffuseScale", "EnvironmentSpecularScale" }
			local base, alpha = nil, 0
			local IN_AMB = Color3.fromRGB(122, 116, 108)
			local function capture()
				local b = {}
				for _, k in ipairs(PROPS) do local ok, v = pcall(function() return Lighting[k] end); if ok then b[k] = v end end
				return b
			end
			local function setP(k, v) pcall(function() Lighting[k] = v end) end
			local function apply(a)
				if not base then return end
				if base.Ambient then setP("Ambient", base.Ambient:Lerp(IN_AMB, a)) end
				if base.OutdoorAmbient then setP("OutdoorAmbient", base.OutdoorAmbient:Lerp(IN_AMB, a)) end
				if base.Brightness then setP("Brightness", base.Brightness * (1 - 0.45 * a)) end
				if base.ExposureCompensation then setP("ExposureCompensation", base.ExposureCompensation - 0.2 * a) end
				if base.ColorShift_Top then setP("ColorShift_Top", base.ColorShift_Top:Lerp(Color3.new(0, 0, 0), a)) end
				if base.EnvironmentDiffuseScale then setP("EnvironmentDiffuseScale", base.EnvironmentDiffuseScale * (1 - 0.35 * a)) end
				if base.EnvironmentSpecularScale then setP("EnvironmentSpecularScale", base.EnvironmentSpecularScale * (1 - 0.3 * a)) end
			end
			local function restore()
				if base then
					for k, v in pairs(base) do setP(k, v) end
					base = nil
				end
				alpha = 0
			end
			local function inside(p)
				local x, y, z = p.X - O.X, p.Y - O.Y, p.Z - O.Z
				if y < -3 then return x >= -4 and x <= 40 and z >= 22 and z <= 62 and y > -19 end -- подвал
				if x >= 18.2 and x <= 81.8 and z >= 3.2 and z <= 43.8 and y < 23.5 then return true end -- дом
				if x >= 2.2 and x < 18.2 and z >= 26.2 and z <= 56.6 and y < 10.5 then return true end    -- гараж
				return false
			end
			SM.setLighting = function(t)
				if base then for k, v in pairs(t) do base[k] = v end apply(alpha)
				else for k, v in pairs(t) do setP(k, v) end end
			end
			SM.getLighting = function() return base and table.clone(base) or capture() end
			SM.isInside = function() return alpha > 0.5 end
			local lconn
			lconn = RunService.Heartbeat:Connect(function(dt)
				if not folder.Parent then lconn:Disconnect(); restore(); return end
				local ch = lp.Character
				local hrp = ch and ch:FindFirstChild("HumanoidRootPart")
				local want = (hrp and inside(hrp.Position)) and 1 or 0
				if alpha == 0 and want == 0 then return end
				if not base then base = capture() end
				local step = dt / 0.7
				if want > alpha then alpha = math.min(1, alpha + step) else alpha = math.max(0, alpha - step) end
				if alpha <= 0 then restore() else apply(alpha) end
			end)
		end

		----------------------------------------------------------------
		-- v6: ТЕРМИНАЛ ПОГОДЫ в гараже Рика (у западной стены, за жалюзи): погода + время суток
		----------------------------------------------------------------
		do
			local Lighting = game:GetService("Lighting")
			-- модель терминала
			box(2.5, 0.3, 50.4, 4.7, 3.2, 54.6, C(46, 48, 54), MAT.Metal)
			box(2.5, 3.2, 50.4, 4.7, 3.35, 54.6, C(30, 32, 36), MAT.Metal, 0, true)
			for i = 0, 3 do for j = 0, 1 do
				box(3.5 + j * 0.5, 3.35, 50.8 + i * 0.9, 3.85 + j * 0.5, 3.45, 51.5 + i * 0.9, ({ C(200, 60, 60), C(230, 200, 60), C(70, 170, 90), C(70, 130, 210) })[(i + j) % 4 + 1], MAT.SmoothPlastic, 0, true)
			end end
			box(2.5, 3.35, 50.6, 3.0, 6.0, 54.4, C(24, 26, 30), MAT.Metal, 0, true)
			local face = box(3.0, 3.8, 50.9, 3.06, 5.7, 54.1, C(14, 70, 40), MAT.Neon, 0, true)
			local sg = Instance.new("SurfaceGui")
			sg.Face = Enum.NormalId.Right; sg.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud; sg.PixelsPerStud = 40; sg.Parent = face
			local tl = Instance.new("TextLabel")
			tl.BackgroundTransparency = 1; tl.Size = UDim2.fromScale(1, 1); tl.TextScaled = true; tl.Font = Enum.Font.Code
			tl.Text = "ТЕРМИНАЛ ПОГОДЫ\n☁  ☂  ❄  ☀\n> нажми"; tl.TextColor3 = C(150, 255, 170); tl.Parent = sg
			local anchor = Instance.new("Part")
			anchor.Anchored = true; anchor.CanCollide = false; anchor.CanTouch = false; anchor.Transparency = 1
			anchor.Size = Vector3.new(3, 5, 5); anchor.CFrame = CFrame.new(at(3.8, 3.5, 52.5)); anchor.Parent = folder

			-- интерфейс
			local old = pgui:FindFirstChild("PortalGunTerminal")
			if old then old:Destroy() end
			local gui = Instance.new("ScreenGui")
			gui.Name = "PortalGunTerminal"; gui.ResetOnSpawn = false; gui.DisplayOrder = 60; gui.Enabled = false; gui.Parent = pgui
			local frame = Instance.new("Frame")
			frame.AnchorPoint = Vector2.new(0.5, 0.5); frame.Position = UDim2.fromScale(0.5, 0.5)
			frame.Size = UDim2.new(0, 340, 0.92, 0); frame.BackgroundColor3 = C(16, 22, 20); frame.BackgroundTransparency = 0.05
			frame.BorderSizePixel = 0; frame.Parent = gui
			local fs = Instance.new("UISizeConstraint"); fs.MaxSize = Vector2.new(340, 420); fs.Parent = frame
			local fc = Instance.new("UICorner"); fc.CornerRadius = UDim.new(0, 14); fc.Parent = frame
			local fk = Instance.new("UIStroke"); fk.Color = C(90, 255, 120); fk.Thickness = 2; fk.Parent = frame
			local sc = Instance.new("ScrollingFrame")
			sc.BackgroundTransparency = 1; sc.Size = UDim2.new(1, -16, 1, -16); sc.Position = UDim2.fromOffset(8, 8)
			sc.BorderSizePixel = 0; sc.ScrollBarThickness = 4; sc.AutomaticCanvasSize = Enum.AutomaticSize.Y; sc.CanvasSize = UDim2.new(); sc.Parent = frame
			local ll = Instance.new("UIListLayout"); ll.Padding = UDim.new(0, 8); ll.SortOrder = Enum.SortOrder.LayoutOrder; ll.Parent = sc
			local order = 0
			local function label(text, size, color)
				order += 1
				local l = Instance.new("TextLabel")
				l.BackgroundTransparency = 1; l.Size = UDim2.new(1, 0, 0, size + 8); l.Text = text; l.TextSize = size
				l.Font = Enum.Font.Code; l.TextColor3 = color or C(150, 255, 170); l.LayoutOrder = order; l.Parent = sc
				return l
			end
			local function grid()
				order += 1
				local g = Instance.new("Frame")
				g.BackgroundTransparency = 1; g.Size = UDim2.new(1, 0, 0, 0); g.AutomaticSize = Enum.AutomaticSize.Y; g.LayoutOrder = order; g.Parent = sc
				local gl = Instance.new("UIGridLayout"); gl.CellSize = UDim2.new(0.5, -4, 0, 42); gl.CellPadding = UDim2.fromOffset(8, 8); gl.SortOrder = Enum.SortOrder.LayoutOrder; gl.Parent = g
				return g
			end
			local function btn(parent, text, fn)
				local b = Instance.new("TextButton")
				b.BackgroundColor3 = C(34, 46, 42); b.TextColor3 = C(235, 255, 240); b.Font = Enum.Font.Code; b.TextSize = 16
				b.Text = text; b.AutoButtonColor = true; b.Parent = parent
				local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 10); c.Parent = b
				b.Activated:Connect(fn)
				return b
			end
			label("ТЕРМИНАЛ ПОГОДЫ", 20)
			local status = label("", 14, C(200, 220, 210))

			-- ПОГОДА
			local atm, atmOrig, lightOrig
			local created = false
			local function ensureOrig()
				if lightOrig then return end
				atm = Lighting:FindFirstChildOfClass("Atmosphere")
				if not atm then
					atm = Instance.new("Atmosphere"); atm.Name = "PortalGunAtmosphere"; atm.Density = 0; atm.Haze = 0; atm.Parent = Lighting; created = true
				end
				atmOrig = { Density = atm.Density, Offset = atm.Offset, Color = atm.Color, Decay = atm.Decay, Glare = atm.Glare, Haze = atm.Haze }
				lightOrig = SM.getLighting()
			end
			local flash = Instance.new("ColorCorrectionEffect"); flash.Name = "PortalGunFlash"; flash.Brightness = 0; flash.Parent = Lighting
			local PRESETS = {
				clear  = { name = "☀ Ясно",    dens = nil, haze = nil, col = nil, mul = 1,    rain = 0,   snow = 0 },
				cloudy = { name = "☁ Облачно", dens = 0.35, haze = 1.5, col = C(190, 195, 200), mul = 0.75, rain = 0, snow = 0 },
				rain   = { name = "☂ Дождь",   dens = 0.45, haze = 2,   col = C(150, 160, 170), mul = 0.55, rain = 150, snow = 0 },
				storm  = { name = "⚡ Гроза",   dens = 0.55, haze = 2.5, col = C(110, 118, 130), mul = 0.4,  rain = 240, snow = 0 },
				snow   = { name = "❄ Снег",    dens = 0.4,  haze = 1.5, col = C(215, 222, 230), mul = 0.8,  rain = 0,   snow = 200 },
				fog    = { name = "🌫 Туман",   dens = 0.75, haze = 3,   col = C(200, 205, 208), mul = 0.8,  rain = 0,   snow = 0 },
			}
			local wx, rainN, snowN = "clear", 0, 0
			local function setWeather(key)
				ensureOrig()
				local p = PRESETS[key]
				wx = key; rainN = p.rain; snowN = p.snow
				SM.weather = key
				if p.dens then
					atm.Density = p.dens; atm.Haze = p.haze; atm.Color = p.col; atm.Decay = p.col:Lerp(C(120, 120, 130), 0.4); atm.Offset = 0.2
				else
					atm.Density = atmOrig.Density; atm.Haze = atmOrig.Haze; atm.Color = atmOrig.Color; atm.Decay = atmOrig.Decay; atm.Offset = atmOrig.Offset
				end
				local t = {}
				if lightOrig.Brightness then t.Brightness = lightOrig.Brightness * p.mul end
				if lightOrig.OutdoorAmbient then t.OutdoorAmbient = lightOrig.OutdoorAmbient:Lerp(C(90, 94, 102), 1 - p.mul) end
				SM.setLighting(t)
				status.Text = "Погода: " .. p.name
			end
			label("ПОГОДА", 16, C(255, 230, 140))
			local g1 = grid()
			for _, key in ipairs({ "clear", "cloudy", "rain", "storm", "snow", "fog" }) do
				btn(g1, PRESETS[key].name, function() setWeather(key) end)
			end

			-- ВРЕМЯ
			label("ВРЕМЯ СУТОК", 16, C(255, 230, 140))
			local clockLbl = label("", 18, C(235, 255, 240))
			local g2 = grid()
			local function setClock(h) Lighting.ClockTime = h % 24 end
			btn(g2, "🌅 Утро 07:00", function() setClock(7) end)
			btn(g2, "☀ День 12:00", function() setClock(12) end)
			btn(g2, "🌇 Вечер 18:30", function() setClock(18.5) end)
			btn(g2, "🌙 Ночь 00:00", function() setClock(0) end)
			btn(g2, "− 1 час", function() setClock(Lighting.ClockTime - 1) end)
			btn(g2, "+ 1 час", function() setClock(Lighting.ClockTime + 1) end)
			local running = false
			local runBtn
			runBtn = btn(g2, "Ход времени: ВЫКЛ", function()
				running = not running
				runBtn.Text = running and "Ход времени: ВКЛ" or "Ход времени: ВЫКЛ"
			end)
			btn(g2, "✕ ЗАКРЫТЬ", function() gui.Enabled = false end)

			-- осадки: пул частей вокруг камеры
			local drops = {}
			for i = 1, 240 do
				local p = Instance.new("Part")
				p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
				p.Size = Vector3.new(0.05, 1.8, 0.05); p.Color = C(170, 200, 235); p.Transparency = 0.45; p.Material = MAT.SmoothPlastic
				p.Position = Vector3.new(0, -5000, 0); p.Parent = fx
				drops[i] = { part = p, on = false }
			end
			local flakes = {}
			for i = 1, 200 do
				local p = Instance.new("Part")
				p.Shape = Enum.PartType.Ball; p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
				p.Size = Vector3.new(0.28, 0.28, 0.28); p.Color = C(250, 250, 255); p.Transparency = 0.1; p.Material = MAT.SmoothPlastic
				p.Position = Vector3.new(0, -5000, 0); p.Parent = fx
				flakes[i] = { part = p, on = false, ph = math.random() * 6 }
			end
			local function respawn(d, cam, up)
				local cp = cam.CFrame.Position
				d.part.Position = Vector3.new(cp.X + (math.random() - 0.5) * 80, cp.Y + math.random() * up + 4, cp.Z + (math.random() - 0.5) * 80)
			end
			local nextBolt = os.clock() + 6
			local conn
			conn = RunService.Heartbeat:Connect(function(dt)
				if not folder.Parent then
					conn:Disconnect()
					for _, d in ipairs(drops) do d.part:Destroy() end
					for _, d in ipairs(flakes) do d.part:Destroy() end
					gui:Destroy()
					if flash then flash:Destroy() end
					if lightOrig then
						if created and atm then atm:Destroy() elseif atm and atmOrig then
							atm.Density = atmOrig.Density; atm.Haze = atmOrig.Haze; atm.Color = atmOrig.Color; atm.Decay = atmOrig.Decay; atm.Offset = atmOrig.Offset
						end
					end
					return
				end
				if running then Lighting.ClockTime = (Lighting.ClockTime + dt * 0.12) % 24 end
				if gui.Enabled then
					local c = Lighting.ClockTime
					clockLbl.Text = string.format("%02d:%02d", math.floor(c) % 24, math.floor((c % 1) * 60))
				end
				local cam = workspace.CurrentCamera
				if not cam then return end
				local out = not SM.isInside()
				local cp = cam.CFrame.Position
				for i, d in ipairs(drops) do
					local want = out and i <= rainN and not SM.newRain
					if want then
						if not d.on or d.part.Position.Y < cp.Y - 25 then d.on = true; respawn(d, cam, 30) end
						d.part.Position -= Vector3.new(0, 95 * dt, 0)
					elseif d.on then d.on = false; d.part.Position = Vector3.new(0, -5000, 0) end
				end
				for i, d in ipairs(flakes) do
					local want = out and i <= snowN
					if want then
						if not d.on or d.part.Position.Y < cp.Y - 25 then d.on = true; respawn(d, cam, 30) end
						d.ph += dt
						d.part.Position += Vector3.new(math.sin(d.ph * 1.7) * 2 * dt, -5 * dt, math.cos(d.ph * 1.3) * 2 * dt)
					elseif d.on then d.on = false; d.part.Position = Vector3.new(0, -5000, 0) end
				end
				if wx == "storm" and os.clock() > nextBolt then
					nextBolt = os.clock() + 5 + math.random() * 9
					if SM.onBolt then pcall(SM.onBolt) end
					task.spawn(function()
						for _ = 1, 2 do
							flash.Brightness = SM.inBasement and 0.06 or 0.55
							TweenService:Create(flash, TweenInfo.new(0.25), { Brightness = 0 }):Play()
							task.wait(0.3)
						end
					end)
				end
			end)

			local pp = Instance.new("ProximityPrompt")
			pp.ActionText = "Открыть"; pp.ObjectText = "Терминал погоды"; pp.HoldDuration = 0
			pp.MaxActivationDistance = 10; pp.RequiresLineOfSight = false; pp.Parent = anchor
			pp.Triggered:Connect(function() gui.Enabled = true end)
			for _, host in ipairs({ anchor, face }) do
				local cd = Instance.new("ClickDetector"); cd.MaxActivationDistance = 12; cd.Parent = host
				cd.MouseClick:Connect(function() gui.Enabled = true end)
			end
		end

		folder.Parent = workspace
	end)
	if not okH then warn("[PortalGun] дом Вотимс не построился: " .. tostring(errH)) end
end

----------------------------------------------------------------------
-- v6: ПОДВАЛ РИКА (Феникс, шприц ДНК, клоны), реалистичная погода, улучшения дома
----------------------------------------------------------------------
do
local okB, errB = pcall(function()
	local SM = portals.SMITH
	local houseF = workspace:FindFirstChild("PortalGunSmithHouse")
	if not SM or not houseF then error("дом не найден") end
	local O = SM.origin
	local MAT = Enum.Material
	local SoundService = game:GetService("SoundService")
	local InsertService = game:GetService("InsertService")
	local Debris = game:GetService("Debris")
	local function C(r, g, b) return Color3.fromRGB(r, g, b) end
	local function at(x, y, z) return O + Vector3.new(x, y, z) end
	local function alive() return houseF.Parent ~= nil end
	local function say(msg, sec) pcall(toast, msg, sec) end
	local function setS(k, v) data.settings[k] = v; pcall(persist) end
	local function getS(k, d) local v = data.settings[k]; if v == nil then return d end return v end

	local oldF = workspace:FindFirstChild("PortalGunSmithBasement")
	if oldF then oldF:Destroy() end
	local folder = Instance.new("Folder")
	folder.Name = "PortalGunSmithBasement"
	folder.Parent = workspace

	local function box(x1, y1, z1, x2, y2, z2, color, mat, tr, nocol)
		local p = Instance.new("Part")
		p.Anchored = true; p.CanTouch = false; p.CanCollide = not nocol
		p.Size = Vector3.new(math.max(0.05, math.abs(x2 - x1)), math.max(0.05, math.abs(y2 - y1)), math.max(0.05, math.abs(z2 - z1)))
		p.Position = at((x1 + x2) / 2, (y1 + y2) / 2, (z1 + z2) / 2)
		p.Color = color; p.Material = mat or MAT.SmoothPlastic; p.Transparency = tr or 0
		p.TopSurface = Enum.SurfaceType.Smooth; p.BottomSurface = Enum.SurfaceType.Smooth
		p.Parent = folder
		return p
	end
	local function cyl(cx, y, cz, d, h, color, mat, nocol)
		local p = Instance.new("Part")
		p.Shape = Enum.PartType.Cylinder
		p.Anchored = true; p.CanTouch = false; p.CanCollide = not nocol
		p.Size = Vector3.new(h, d, d)
		p.CFrame = CFrame.new(at(cx, y + h / 2, cz)) * CFrame.Angles(0, 0, math.pi / 2)
		p.Color = color; p.Material = mat or MAT.SmoothPlastic
		p.Parent = folder
		return p
	end
	local function ball(cx, cy, cz, d, color, mat)
		local p = Instance.new("Part")
		p.Shape = Enum.PartType.Ball
		p.Anchored = true; p.CanTouch = false; p.CanCollide = false
		p.Size = Vector3.new(d, d, d); p.Position = at(cx, cy, cz)
		p.Color = color; p.Material = mat or MAT.SmoothPlastic
		p.Parent = folder
		return p
	end
	local function hrp()
		local ch = lp.Character
		return ch and ch:FindFirstChild("HumanoidRootPart")
	end
	local function tpTo(pos, look)
		local r = hrp()
		if not r then return end
		look = look or Vector3.new(0, 0, 1)
		pcall(function() r.AssemblyLinearVelocity = Vector3.zero end)
		r.CFrame = CFrame.new(pos, Vector3.new(pos.X + look.X, pos.Y, pos.Z + look.Z))
	end
	local function billboard(part, text, size, offY, col)
		local g = Instance.new("BillboardGui")
		g.Size = UDim2.fromOffset(size or 200, 40); g.StudsOffset = Vector3.new(0, offY or 2, 0)
		g.AlwaysOnTop = false; g.MaxDistance = 45; g.LightInfluence = 0; g.Parent = part
		local l = Instance.new("TextLabel")
		l.BackgroundTransparency = 1; l.Size = UDim2.fromScale(1, 1); l.TextScaled = true; l.Font = Enum.Font.Code
		l.Text = text; l.TextColor3 = col or C(150, 255, 170); l.TextStrokeTransparency = 0.3; l.Parent = g
		return l
	end
	local function anchorAt(x, y, z, sx, sy, sz)
		local a = Instance.new("Part")
		a.Anchored = true; a.CanCollide = false; a.CanTouch = false; a.CanQuery = false; a.Transparency = 1
		a.Size = Vector3.new(sx or 3, sy or 3, sz or 3); a.Position = at(x, y, z); a.Parent = folder
		return a
	end
	local function prompt(parent, action, object, key, fn, dist, offY)
		local pp = Instance.new("ProximityPrompt")
		pp.ActionText = action; pp.ObjectText = object; pp.HoldDuration = 0
		pp.MaxActivationDistance = dist or 10; pp.RequiresLineOfSight = false
		if key then pp.KeyboardKeyCode = key end
		if offY then pp.UIOffset = Vector2.new(0, offY) end
		pp.Parent = parent
		if SM.fancyPrompt then SM.fancyPrompt(pp, offY) end
		pp.Triggered:Connect(fn)
		return pp
	end

	----------------------------------------------------------------
	-- ПОДВАЛ: геометрия
	----------------------------------------------------------------
	local FY, FT, CY = -18, -17.7, -6
	local BX1, BX2, BZ1, BZ2 = -4, 40, 22, 62
	local HX1, HZ1, HX2, HZ2 = 7, 33, 12, 38 -- люк в гараже (дыра в полу и земле)
	local CONC, STEEL, DARKM = C(116, 120, 126), C(150, 156, 162), C(38, 42, 48)

	box(BX1 - 0.4, FY, BZ1 - 0.4, BX2 + 0.4, FT, BZ2 + 0.4, C(74, 78, 84), MAT.Concrete)
	for x = BX1, BX2, 4 do box(x, FT, BZ1, x + 0.08, FT + 0.02, BZ2, C(58, 62, 68), MAT.Concrete, 0, true) end
	box(BX1 - 0.4, FY, BZ1 - 0.4, BX1, CY, BZ2 + 0.4, CONC, MAT.Concrete)
	box(BX2, FY, BZ1 - 0.4, BX2 + 0.4, CY, BZ2 + 0.4, CONC, MAT.Concrete)
	box(BX1, FY, BZ1 - 0.4, BX2, CY, BZ1, CONC, MAT.Concrete)
	box(BX1, FY, BZ2, BX2, CY, BZ2 + 0.4, CONC, MAT.Concrete)
	-- жёлто-чёрная разметка по низу стен
	for _, s in ipairs({ { BX1, BZ1, BX2, BZ1 + 0.05 }, { BX1, BZ2 - 0.05, BX2, BZ2 }, { BX1, BZ1, BX1 + 0.05, BZ2 }, { BX2 - 0.05, BZ1, BX2, BZ2 } }) do
		box(s[1], FT, s[2], s[3], FT + 0.7, s[4], C(235, 190, 40), MAT.SmoothPlastic, 0, true)
	end
	-- потолок (с дырой под люк)
	local CEIL = C(52, 56, 64)
	box(BX1, CY - 0.4, BZ1, BX2, CY, HZ1, CEIL, MAT.Metal)
	box(BX1, CY - 0.4, HZ2, BX2, CY, BZ2, CEIL, MAT.Metal)
	box(BX1, CY - 0.4, HZ1, HX1, CY, HZ2, CEIL, MAT.Metal)
	box(HX2, CY - 0.4, HZ1, BX2, CY, HZ2, CEIL, MAT.Metal)
	-- обшивка шахты люка
	box(HX1, CY, HZ1, HX1 + 0.2, 0, HZ2, STEEL, MAT.Metal)
	box(HX2 - 0.2, CY, HZ1, HX2, 0, HZ2, STEEL, MAT.Metal)
	box(HX1, CY, HZ1, HX2, 0, HZ1 + 0.2, STEEL, MAT.Metal)
	box(HX1, CY, HZ2 - 0.2, HX2, 0, HZ2, STEEL, MAT.Metal)
	-- v6: две лестницы у северной стены шахты (вылезаешь сам, кнопок нет)
	do
		for _, tx in ipairs({ HX1 + 1.15, HX2 - 1.15 }) do
			local tr = Instance.new("TrussPart")
			tr.Anchored = true; tr.Size = Vector3.new(2, 18.7, 2)
			tr.Position = at(tx, (FT + 1.0) / 2, HZ1 + 1.1)
			tr.Color = C(255, 196, 30); tr.Parent = folder
		end
	end
	-- рама люка + открытая крышка
	local HAZ = C(255, 196, 30)
	box(HX1 - 0.5, 0.34, HZ1 - 0.5, HX2 + 0.5, 0.46, HZ1, HAZ, MAT.Metal, 0, true)
	box(HX1 - 0.5, 0.34, HZ2, HX2 + 0.5, 0.46, HZ2 + 0.5, HAZ, MAT.Metal, 0, true)
	box(HX1 - 0.5, 0.34, HZ1, HX1, 0.46, HZ2, HAZ, MAT.Metal, 0, true)
	box(HX2, 0.34, HZ1, HX2 + 0.5, 0.46, HZ2, HAZ, MAT.Metal, 0, true)
	do
		local lid = Instance.new("Part")
		lid.Anchored = true; lid.CanCollide = false; lid.CanTouch = false
		lid.Size = Vector3.new(5, 0.25, 5); lid.Color = C(70, 76, 84); lid.Material = MAT.DiamondPlate
		lid.CFrame = CFrame.new(at(9.5, 0.4, HZ1)) * CFrame.Angles(math.rad(-80), 0, 0) * CFrame.new(0, 0, 2.5)
		lid.Parent = folder
	end
	do -- v6: без кнопок: шагни в люк — спустишься, вылезай по лестнице
		local sign = anchorAt(9.5, 6.5, 35.5, 2, 2, 2)
		billboard(sign, "↓ ПОДВАЛ РИКА — шагни в люк", 300, 0, C(255, 220, 90))
		local sign2 = anchorAt(9.5, FT + 6, 35.5, 1, 1, 1)
		billboard(sign2, "↑ ЛЕСТНИЦА — лезь вверх", 260, 0, C(255, 220, 90))
		for i, ly in ipairs({ -3, -9, -15 }) do
			local s2 = box(HX1 + 0.8, ly, HZ2 - 0.28, HX2 - 0.8, ly + 0.25, HZ2 - 0.2, C(255, 214, 120), MAT.Neon, 0, true)
			if i ~= 2 then
				local pl = Instance.new("PointLight"); pl.Brightness = 0.7; pl.Range = 14; pl.Color = C(255, 224, 160); pl.Parent = s2
			end
		end
	end

	-- потолочные лампы подвала (мягкий свет)
	for i, lx in ipairs({ 2, 14, 26, 36 }) do
		for _, lz in ipairs({ 28, 50 }) do
			local s = box(lx - 2, CY - 0.55, lz, lx + 2, CY - 0.4, lz + 0.6, C(235, 245, 255), MAT.Neon, 0, true)
			if i % 2 == 1 then
				local pl = Instance.new("PointLight"); pl.Brightness = 0.9; pl.Range = 28; pl.Color = C(215, 235, 255); pl.Parent = s
			end
		end
	end

	-- серверные стойки вдоль северной стены
	for i = 0, 4 do
		local rx = BX1 + 2 + i * 3.2
		if rx < 6 or rx > 17 then
			box(rx, FT, BZ1 + 0.2, rx + 2.6, FT + 8, BZ1 + 2.6, C(30, 34, 40), MAT.Metal)
			for k = 0, 6 do
				local col = ({ C(60, 255, 120), C(255, 70, 70), C(70, 160, 255) })[(i + k) % 3 + 1]
				box(rx + 0.3, FT + 1 + k, BZ1 + 2.6, rx + 0.7, FT + 1.25 + k, BZ1 + 2.7, col, MAT.Neon, 0, true)
				box(rx + 0.9, FT + 0.9 + k, BZ1 + 2.6, rx + 2.3, FT + 1.4 + k, BZ1 + 2.65, C(52, 58, 66), MAT.Metal, 0, true)
			end
		end
	end
	-- трубы по потолку и стенам
	do
		local p1 = Instance.new("Part"); p1.Anchored = true; p1.CanCollide = false; p1.Shape = Enum.PartType.Cylinder
		p1.Size = Vector3.new(BX2 - BX1, 0.9, 0.9); p1.CFrame = CFrame.new(at((BX1 + BX2) / 2, CY - 1.4, BZ2 - 1.0))
		p1.Color = C(96, 100, 108); p1.Material = MAT.Metal; p1.Parent = folder
		local p2 = p1:Clone(); p2.CFrame = CFrame.new(at((BX1 + BX2) / 2, CY - 1.4, BZ2 - 2.4)); p2.Color = C(176, 60, 50); p2.Parent = folder
	end
	-- неоновая вывеска
	do
		local sg = box(14, FT + 6.5, BZ2 - 0.3, 26, FT + 9, BZ2 - 0.1, C(14, 20, 18), MAT.Metal, 0, true)
		local g = Instance.new("SurfaceGui"); g.Face = Enum.NormalId.Front; g.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud; g.PixelsPerStud = 40; g.Parent = sg
		local l = Instance.new("TextLabel"); l.BackgroundTransparency = 1; l.Size = UDim2.fromScale(1, 1); l.TextScaled = true
		l.Font = Enum.Font.Code; l.Text = "ЛАБОРАТОРИЯ РИКА\nC-137"; l.TextColor3 = C(110, 255, 150); l.Parent = g
	end

	-- стол со шприцем ДНК (северная стена)
	local TBX1, TBX2, TBZ1, TBZ2 = 7.6, 16.4, 22.8, 26.6
	box(TBX1, FT + 3.0, TBZ1, TBX2, FT + 3.3, TBZ2, C(196, 200, 206), MAT.Metal)
	for _, lx in ipairs({ TBX1 + 0.2, TBX2 - 0.5 }) do for _, lz in ipairs({ TBZ1 + 0.2, TBZ2 - 0.5 }) do box(lx, FT, lz, lx + 0.3, FT + 3.0, lz + 0.3, C(110, 114, 120), MAT.Metal) end end
	box(9, FT + 3.3, 24, 15, FT + 3.36, 26, C(30, 60, 44), MAT.SmoothPlastic, 0, true)

	----------------------------------------------------------------
	-- ДОМ: щель у лестницы уже закрыта в основном коде; здесь украшения
	----------------------------------------------------------------
	do
		local BRICKC = C(158, 64, 48)
		-- труба с дымком
		box(26, 12, 20, 29, 18.5, 23, BRICKC, MAT.Brick)
		box(25.6, 18.5, 19.6, 29.4, 19, 23.4, C(96, 40, 32), MAT.Brick)
		local sm = anchorAt(27.5, 19.3, 21.5, 1, 1, 1)
		local em = Instance.new("ParticleEmitter")
		em.Rate = 5; em.Lifetime = NumberRange.new(4, 6); em.Speed = NumberRange.new(2.5, 4)
		em.SpreadAngle = Vector2.new(12, 12); em.Acceleration = Vector3.new(1.2, 0.5, 0)
		em.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1.2), NumberSequenceKeypoint.new(1, 5) })
		em.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.55), NumberSequenceKeypoint.new(1, 1) })
		em.Color = ColorSequence.new(C(190, 190, 195)); em.LightInfluence = 0.6; em.Parent = sm
		-- навес над крыльцом
		box(50.4, 9.2, 38.4, 62.0, 9.6, 43.4, C(104, 62, 46), MAT.Slate)
		box(50.4, 9.6, 43.2, 62.0, 10.0, 43.4, C(246, 244, 238), MAT.Wood, 0, true)
		for _, cx in ipairs({ 51.2, 61.2 }) do
			box(cx - 0.3, 0.3, 42.6, cx + 0.3, 9.2, 43.2, C(246, 244, 238), MAT.Wood)
		end
		-- ящики с цветами под передними окнами
		for _, w in ipairs({ { 21, 29 }, { 36, 46 } }) do
			box(w[1], 2.9, 38.4, w[2], 3.8, 39.3, C(150, 100, 66), MAT.Wood)
			local x = w[1] + 0.6
			while x < w[2] - 0.3 do
				ball(x, 4.1, 38.9, 1.1, ({ C(236, 80, 120), C(250, 220, 70), C(250, 250, 250), C(170, 90, 220) })[(math.floor(x) % 4) + 1], MAT.SmoothPlastic)
				x = x + 1.5
			end
		end
		-- задний дворик: настил, стол с зонтом, стулья, гриль
		box(34, 0, -9, 56, 0.35, 3, C(160, 112, 72), MAT.WoodPlanks)
		for i = 0, 10 do box(34 + i * 2, 0.35, -9, 34.08 + i * 2, 0.37, 3, C(130, 88, 56), MAT.Wood, 0, true) end
		cyl(45, 0.35, -4, 4.6, 0.25, C(232, 232, 226), MAT.SmoothPlastic)
		cyl(45, 0.35, -4, 0.5, 3, C(110, 114, 120), MAT.Metal)
		cyl(45, 3.1, -4, 5, 0.25, C(232, 232, 226), MAT.SmoothPlastic)
		cyl(45, 3.3, -4, 0.3, 6, C(110, 114, 120), MAT.Metal, true)
		cyl(45, 9.2, -4, 11, 0.3, C(210, 60, 54), MAT.Fabric, true)
		for _, ch in ipairs({ { 41.2, -4 }, { 48.8, -4 }, { 45, -7.8 }, { 45, -0.2 } }) do
			box(ch[1] - 0.8, 0.35, ch[2] - 0.8, ch[1] + 0.8, 1.9, ch[2] + 0.8, C(80, 120, 160), MAT.Fabric)
		end
		box(51, 0.35, -8, 54, 3.2, -6, C(40, 42, 46), MAT.Metal)
		box(51.2, 3.2, -8.2, 53.8, 3.5, -5.8, C(70, 72, 78), MAT.Metal, 0, true)
		-- растения в углах
		for _, pl in ipairs({ { 52.3, 36.5 }, { 80.5, 42.4 } }) do
			cyl(pl[1], 0.3, pl[2], 1.4, 1.2, C(190, 100, 70), MAT.Concrete)
			ball(pl[1], 3, pl[2], 3, C(60, 140, 70), MAT.Grass)
			ball(pl[1] + 0.5, 3.9, pl[2] - 0.3, 2, C(80, 165, 80), MAT.Grass)
		end
	end

	----------------------------------------------------------------
	-- МЕНЮ (общий конструктор в стиле терминала погоды)
	----------------------------------------------------------------
	local function makeMenu(name)
		local oldg = pgui:FindFirstChild(name)
		if oldg then oldg:Destroy() end
		local gui = Instance.new("ScreenGui")
		gui.Name = name; gui.ResetOnSpawn = false; gui.DisplayOrder = 61; gui.Enabled = false; gui.Parent = pgui
		local frame = Instance.new("Frame")
		frame.AnchorPoint = Vector2.new(0.5, 0.5); frame.Position = UDim2.fromScale(0.5, 0.5)
		frame.Size = UDim2.new(0, 360, 0.94, 0); frame.BackgroundColor3 = C(16, 22, 20); frame.BackgroundTransparency = 0.04
		frame.BorderSizePixel = 0; frame.Parent = gui
		local sc1 = Instance.new("UISizeConstraint"); sc1.MaxSize = Vector2.new(360, 460); sc1.Parent = frame
		local cr = Instance.new("UICorner"); cr.CornerRadius = UDim.new(0, 14); cr.Parent = frame
		local st = Instance.new("UIStroke"); st.Color = C(90, 255, 120); st.Thickness = 2; st.Parent = frame
		local sc = Instance.new("ScrollingFrame")
		sc.BackgroundTransparency = 1; sc.Size = UDim2.new(1, -16, 1, -16); sc.Position = UDim2.fromOffset(8, 8)
		sc.BorderSizePixel = 0; sc.ScrollBarThickness = 4; sc.AutomaticCanvasSize = Enum.AutomaticSize.Y; sc.CanvasSize = UDim2.new(); sc.Parent = frame
		local ll = Instance.new("UIListLayout"); ll.Padding = UDim.new(0, 8); ll.SortOrder = Enum.SortOrder.LayoutOrder; ll.Parent = sc
		local M = { gui = gui, sc = sc, order = 0 }
		function M.clear()
			for _, c in ipairs(sc:GetChildren()) do
				if not c:IsA("UIListLayout") then c:Destroy() end
			end
			M.order = 0
		end
		function M.label(text, size, color)
			M.order = M.order + 1
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency = 1; l.Size = UDim2.new(1, 0, 0, (size or 14) + 8); l.AutomaticSize = Enum.AutomaticSize.Y
			l.Text = text; l.TextSize = size or 14; l.TextWrapped = true; l.TextXAlignment = Enum.TextXAlignment.Left
			l.Font = Enum.Font.Code; l.TextColor3 = color or C(150, 255, 170); l.LayoutOrder = M.order; l.Parent = sc
			return l
		end
		function M.grid()
			M.order = M.order + 1
			local g = Instance.new("Frame")
			g.BackgroundTransparency = 1; g.Size = UDim2.new(1, 0, 0, 0); g.AutomaticSize = Enum.AutomaticSize.Y; g.LayoutOrder = M.order; g.Parent = sc
			local gl = Instance.new("UIGridLayout"); gl.CellSize = UDim2.new(0.5, -4, 0, 42); gl.CellPadding = UDim2.fromOffset(8, 8)
			gl.SortOrder = Enum.SortOrder.LayoutOrder; gl.Parent = g
			return g
		end
		function M.btn(parent, text, fn)
			local b = Instance.new("TextButton")
			b.BackgroundColor3 = C(34, 46, 42); b.TextColor3 = C(235, 255, 240); b.Font = Enum.Font.Code; b.TextSize = 14
			b.TextWrapped = true; b.Text = text; b.AutoButtonColor = true; b.Parent = parent
			local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 10); c.Parent = b
			b.Activated:Connect(fn)
			return b
		end
		function M.field(ph, text)
			M.order = M.order + 1
			local b = Instance.new("TextBox")
			b.Size = UDim2.new(1, 0, 0, 38); b.BackgroundColor3 = C(24, 34, 32); b.TextColor3 = C(235, 255, 240)
			b.PlaceholderText = ph; b.PlaceholderColor3 = C(120, 150, 140); b.Text = text or ""; b.Font = Enum.Font.Code
			b.TextSize = 14; b.ClearTextOnFocus = false; b.TextXAlignment = Enum.TextXAlignment.Left; b.LayoutOrder = M.order; b.Parent = sc
			local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 8); c.Parent = b
			local p = Instance.new("UIPadding"); p.PaddingLeft = UDim.new(0, 8); p.Parent = b
			return b
		end
		return M
	end

	----------------------------------------------------------------
	-- СОСТОЯНИЕ
	----------------------------------------------------------------
	local state = { phoenix = getS("phx_on", false) == true, items = {}, clones = {} }
	do
		local names = getS("phx_items", {})
		if type(names) == "table" then
			for _, n in ipairs(names) do if type(n) == "string" then state.items[#state.items + 1] = { name = n } end end
		end
	end
	local sampleTpl = {} -- userId -> клон-шаблон персонажа (в памяти)
	local spawnClone, openCloneMenu, syringeUse, syringeSelf
	local YEL, GREY, ORG = C(255, 230, 140), C(170, 190, 180), C(255, 170, 90)

	----------------------------------------------------------------
	-- КАПСУЛЫ
	----------------------------------------------------------------
	local function makePod(cx, cz, col)
		local pod = { cx = cx, cz = cz, col = col, busy = false }
		cyl(cx, FT, cz, 6.4, 0.8, C(58, 62, 70), MAT.Metal)
		cyl(cx, FT + 0.8, cz, 6.0, 0.12, C(40, 44, 50), MAT.Metal, true)
		pod.glass = cyl(cx, FT + 0.8, cz, 5.4, 8.6, C(190, 235, 245), MAT.Glass, true)
		pod.glass.Transparency = 0.55
		pod.liquid = cyl(cx, FT + 0.95, cz, 4.9, 8.0, col, MAT.Neon, true)
		pod.liquid.Transparency = 0.8
		cyl(cx, FT + 9.4, cz, 6.4, 0.6, C(58, 62, 70), MAT.Metal)
		for i = 0, 3 do
			local a = i * math.pi / 2 + math.pi / 4
			cyl(cx + math.cos(a) * 2.9, FT + 0.8, cz + math.sin(a) * 2.9, 0.3, 8.6, C(120, 124, 130), MAT.Metal, true)
		end
		for _, ry in ipairs({ 2.5, 5.5, 8.2 }) do cyl(cx, FT + ry, cz, 5.7, 0.18, C(90, 94, 100), MAT.Metal, true) end
		pod.spawn = at(cx, FT + 3.8, cz)
		-- пульт
		local sz = cz + 7
		box(cx - 1.8, FT, sz - 0.6, cx + 1.8, FT + 3.0, sz + 0.6, DARKM, MAT.Metal)
		local scr = box(cx - 1.5, FT + 3.0, sz - 0.5, cx + 1.5, FT + 5.2, sz - 0.35, C(10, 30, 20), MAT.Neon, 0, true)
		local sg = Instance.new("SurfaceGui")
		sg.Face = Enum.NormalId.Front; sg.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud; sg.PixelsPerStud = 40; sg.Parent = scr
		local tl = Instance.new("TextLabel")
		tl.BackgroundTransparency = 1; tl.Size = UDim2.fromScale(1, 1); tl.TextScaled = true; tl.Font = Enum.Font.Code
		tl.Text = ""; tl.TextColor3 = C(150, 255, 170); tl.Parent = sg
		pod.screenLabel = tl
		pod.screenPart = scr
		function pod.setScreen(text, color)
			tl.Text = text; tl.TextColor3 = color or C(150, 255, 170)
		end
		pod.anchor = anchorAt(cx, FT + 3, sz - 1.8, 4, 4, 3)
		-- v6: подсветка, плафон, трубы, пузырьки, сканер, лампа состояния
		pod.baseRing = cyl(cx, FT + 0.92, cz, 5.9, 0.05, col, MAT.Neon, true)
		pod.strips = {}
		for i = 0, 3 do
			local a = i * math.pi / 2 + math.pi / 4
			pod.strips[#pod.strips + 1] = cyl(cx + math.cos(a) * 3.12, FT + 1.2, cz + math.sin(a) * 3.12, 0.1, 8.0, col, MAT.Neon, true)
		end
		pod.lamp = cyl(cx, FT + 9.28, cz, 5.0, 0.12, col, MAT.Neon, true)
		pod.light = Instance.new("PointLight")
		pod.light.Color = col; pod.light.Range = 16; pod.light.Brightness = 0.5; pod.light.Parent = pod.lamp
		for i = 0, 2 do
			local a = i * math.pi * 2 / 3
			cyl(cx + math.cos(a) * 1.3, FT + 10.0, cz + math.sin(a) * 1.3, 0.5, 1.7, C(84, 90, 98), MAT.Metal, true)
		end
		cyl(cx, FT + 9.95, cz, 3.4, 0.2, C(40, 44, 50), MAT.Metal, true)
		pod.led = ball(cx + 1.2, FT + 2.4, sz - 0.68, 0.45, C(255, 90, 70), MAT.Neon)
		pod.scan = cyl(cx, FT + 0.9, cz, 4.7, 0.12, C(190, 255, 255), MAT.Neon, true)
		pod.scan.Transparency = 1
		local bub = anchorAt(cx, FT + 1.0, cz, 4.4, 0.2, 4.4)
		local em = Instance.new("ParticleEmitter")
		em.Rate = 0; em.Lifetime = NumberRange.new(2.5, 4); em.Speed = NumberRange.new(1.5, 3)
		em.SpreadAngle = Vector2.new(6, 6); em.EmissionDirection = Enum.NormalId.Top
		em.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.12), NumberSequenceKeypoint.new(0.5, 0.3), NumberSequenceKeypoint.new(1, 0.1) })
		em.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 1) })
		em.Color = ColorSequence.new(C(230, 255, 240)); em.LightEmission = 0.6; em.LightInfluence = 0
		em.Parent = bub
		pod.bubbles = em
		local stAnch = anchorAt(cx, FT + 1.0, cz, 5, 0.2, 5)
		local steam = Instance.new("ParticleEmitter")
		steam.Rate = 0; steam.Lifetime = NumberRange.new(1.5, 2.6); steam.Speed = NumberRange.new(3, 6)
		steam.SpreadAngle = Vector2.new(70, 70); steam.EmissionDirection = Enum.NormalId.Top
		steam.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1.2), NumberSequenceKeypoint.new(1, 4.5) })
		steam.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.55), NumberSequenceKeypoint.new(1, 1) })
		steam.Color = ColorSequence.new(C(220, 240, 235)); steam.LightInfluence = 0.4
		steam.Parent = stAnch
		pod.steam = steam
		function pod.setLed(c) pod.led.Color = c end
		function pod.setGlow(level, color)
			local c2 = color or pod.col
			for _, st in ipairs(pod.strips) do st.Color = c2; st.Transparency = 0.9 - 0.9 * level end
			pod.baseRing.Color = c2; pod.baseRing.Transparency = 0.9 - 0.8 * level
			pod.lamp.Color = c2; pod.lamp.Transparency = 0.8 - 0.8 * level
			pod.light.Color = c2; pod.light.Brightness = 0.2 + 1.2 * level
			pod.bubbles.Rate = level * 12
		end
		function pod.setLiquidH(h)
			pod.liquid.Size = Vector3.new(h, 4.9, 4.9)
			pod.liquid.CFrame = CFrame.new(at(cx, FT + 0.95 + h / 2, cz)) * CFrame.Angles(0, 0, math.pi / 2)
		end
		pod.setGlow(0.15)
		function pod.open()
			TweenService:Create(pod.liquid, TweenInfo.new(1.2), { Transparency = 1 }):Play()
			TweenService:Create(pod.glass, TweenInfo.new(1.2), { Transparency = 0.93 }):Play()
		end
		function pod.close(active)
			TweenService:Create(pod.glass, TweenInfo.new(1.0), { Transparency = 0.55 }):Play()
			TweenService:Create(pod.liquid, TweenInfo.new(2.0), { Transparency = active and 0.45 or 0.8 }):Play()
			pod.setGlow(active and 0.6 or 0.15)
		end
		return pod
	end

	local pod1 = makePod(22, 30, C(70, 255, 130))
	local pod2 = makePod(32, 30, C(255, 150, 50))
	billboard(anchorAt(22, FT + 9.5, 30, 1, 1, 1), "ФЕНИКС", 120, 1.5, C(110, 255, 150))
	billboard(anchorAt(32, FT + 9.5, 30, 1, 1, 1), "КЛОНИРОВАНИЕ", 160, 1.5, C(255, 190, 110))

	local function phoenixVisual()
		if state.phoenix then
			pod1.liquid.Color = C(70, 255, 130)
			pod1.close(true)
			pod1.setLed(C(80, 255, 140))
			pod1.setScreen("ФЕНИКС: АКТИВЕН\nДНК: " .. lp.DisplayName, C(120, 255, 150))
		else
			pod1.liquid.Color = C(80, 100, 110)
			pod1.close(false)
			pod1.setLed(C(255, 90, 70))
			pod1.setScreen("ФЕНИКС: ВЫКЛ\nнужен шприц с твоим ДНК", C(255, 170, 120))
		end
	end
	phoenixVisual()
	pod2.setScreen("КЛОНИРОВАНИЕ\nшприц с ДНК → клон", C(255, 190, 110))
	pod2.setLed(C(255, 190, 80))

	-- v6: УЛУЧШЕНИЯ ПОДВАЛА: дорожка, бочки, ящики, верстак, тесла-катушка, настенный экран
	do
		box(9.5, FT, 34.7, 39, FT + 0.03, 35.0, C(60, 255, 130), MAT.Neon, 0.35, true)
		for i = 0, 3 do
			local bz = 41.2 + i * 2.3
			cyl(37.4, FT, bz, 1.9, 2.8, C(46, 150, 86), MAT.Metal)
			cyl(37.4, FT + 1.3, bz, 1.96, 0.28, C(130, 255, 90), MAT.Neon, true)
			cyl(37.4, FT + 2.8, bz, 1.6, 0.12, C(36, 110, 66), MAT.Metal, true)
		end
		box(-3.4, FT, 55.2, -0.4, FT + 3, 58.4, C(150, 110, 70), MAT.Wood)
		box(-3.1, FT + 3, 55.6, -0.9, FT + 5.2, 57.8, C(168, 126, 80), MAT.Wood)
		box(0.2, FT, 55.8, 2.6, FT + 2.4, 58.2, C(120, 124, 130), MAT.Metal)
		box(0.2, FT + 2.4, 56.2, 2.6, FT + 2.55, 57.8, C(255, 196, 30), MAT.SmoothPlastic, 0, true)
		-- верстак с колбами и монитором
		box(27, FT + 3.0, 57.4, 37.6, FT + 3.3, 61.4, C(120, 124, 130), MAT.Metal)
		for _, lx in ipairs({ 27.2, 37.0 }) do
			for _, lz in ipairs({ 57.6, 60.8 }) do box(lx, FT, lz, lx + 0.4, FT + 3.0, lz + 0.4, C(90, 94, 100), MAT.Metal) end
		end
		local flask = { C(255, 90, 90), C(110, 255, 150), C(110, 190, 255), C(255, 220, 90) }
		for i = 0, 3 do
			local fx = 28.4 + i * 1.5
			cyl(fx, FT + 3.3, 59.4, 0.9, 1.5, C(200, 235, 245), MAT.Glass, true).Transparency = 0.5
			cyl(fx, FT + 3.35, 59.4, 0.75, 0.9, flask[i + 1], MAT.Neon, true).Transparency = 0.25
		end
		box(33.6, FT + 3.3, 59.6, 36.8, FT + 5.2, 59.9, C(20, 24, 28), MAT.Metal)
		box(33.8, FT + 3.5, 59.45, 36.6, FT + 5.0, 59.58, C(70, 200, 255), MAT.Neon, 0.15, true)
		-- тесла-катушка
		local tcx, tcz = 3, 46
		cyl(tcx, FT, tcz, 3.2, 0.5, DARKM, MAT.Metal)
		cyl(tcx, FT + 0.5, tcz, 1.1, 5.0, STEEL, MAT.Metal)
		for i = 0, 3 do cyl(tcx, FT + 1.2 + i * 1.0, tcz, 2.4 - i * 0.4, 0.18, C(120, 124, 130), MAT.Metal, true) end
		local orb = ball(tcx, FT + 6.6, tcz, 2.0, C(150, 210, 255), MAT.Neon)
		local orbL = Instance.new("PointLight"); orbL.Color = C(150, 210, 255); orbL.Range = 16; orbL.Brightness = 0.6; orbL.Parent = orb
		local function zap()
			local a = orb.Position
			local ang = math.random() * math.pi * 2
			local b = a + Vector3.new(math.cos(ang) * (2 + math.random() * 2), -1.5 - math.random() * 2.5, math.sin(ang) * (2 + math.random() * 2))
			local len = (b - a).Magnitude
			local p = Instance.new("Part")
			p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
			p.Material = MAT.Neon; p.Color = C(200, 230, 255); p.Size = Vector3.new(0.08, 0.08, len)
			p.CFrame = CFrame.lookAt((a + b) / 2, b); p.Parent = folder
			Debris:AddItem(p, 0.12)
		end
		-- настенный экран статуса (восточная стена)
		local scr = box(39.5, FT + 3.4, 40.6, 39.9, FT + 9.4, 52.4, C(8, 20, 16), MAT.Metal, 0, true)
		local sg = Instance.new("SurfaceGui")
		sg.Face = Enum.NormalId.Left; sg.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud; sg.PixelsPerStud = 40; sg.Parent = scr
		local tl = Instance.new("TextLabel")
		tl.BackgroundTransparency = 1; tl.Size = UDim2.fromScale(1, 0.55); tl.TextScaled = true; tl.Font = Enum.Font.Code
		tl.TextColor3 = C(110, 255, 150); tl.TextXAlignment = Enum.TextXAlignment.Left; tl.Text = ""; tl.Parent = sg
		local bars = {}
		for i = 1, 16 do
			bars[i] = box(39.3, FT + 3.7, 41.0 + (i - 1) * 0.68, 39.5, FT + 4.0, 41.5 + (i - 1) * 0.68, C(70, 255, 140), MAT.Neon, 0.1, true)
		end
		task.spawn(function()
			local tt, n = 0, 0
			while alive() do
				tt = tt + 0.12; n = n + 1
				for i, b in ipairs(bars) do
					local h = 0.3 + (state.phoenix and 1.9 or 0.8) * math.abs(math.sin(tt * 3 + i * 0.7))
					b.Size = Vector3.new(0.2, h, 0.5)
					b.Position = at(39.4, FT + 3.7 + h / 2, 41.25 + (i - 1) * 0.68)
				end
				orb.Transparency = 0.1 + 0.25 * math.abs(math.sin(tt * 4))
				if math.random() < 0.15 then zap() end
				if n % 8 == 1 then
					tl.Text = "РИК · C-137\nФЕНИКС: " .. (state.phoenix and "АКТИВЕН" or "ВЫКЛ") .. "\nКЛОНЫ: " .. #state.clones .. "/4"
				end
				task.wait(0.12)
			end
		end)
	end

	----------------------------------------------------------------
	-- ШПРИЦ ДНК
	----------------------------------------------------------------
	local SYR = "Шприц ДНК"
	local function findSyringe()
		for _, holder in ipairs({ lp.Character, lp:FindFirstChildOfClass("Backpack") }) do
			if holder then
				local t = holder:FindFirstChild(SYR)
				if t and t:IsA("Tool") then return t end
			end
		end
		return nil
	end
	-- v6: кнопка «ВЗЯТЬ СВОЁ ДНК» — видна, пока шприц в руках
	local dnaGui = Instance.new("ScreenGui")
	dnaGui.Name = "PortalGunDNA"; dnaGui.ResetOnSpawn = false; dnaGui.DisplayOrder = 70
	dnaGui.IgnoreGuiInset = true; dnaGui.Enabled = false; dnaGui.Parent = pgui
	do
		local b = Instance.new("TextButton")
		b.AnchorPoint = Vector2.new(0.5, 1); b.Position = UDim2.new(0.5, 0, 1, -170); b.Size = UDim2.fromOffset(250, 52)
		b.BackgroundColor3 = C(14, 40, 28); b.TextColor3 = C(190, 255, 215); b.Font = Enum.Font.GothamBold
		b.TextSize = 17; b.Text = "🧬 ВЗЯТЬ СВОЁ ДНК"; b.AutoButtonColor = true; b.Parent = dnaGui
		local cr = Instance.new("UICorner"); cr.CornerRadius = UDim.new(0, 14); cr.Parent = b
		local st = Instance.new("UIStroke"); st.Color = C(70, 255, 130); st.Thickness = 2; st.Parent = b
		b.Activated:Connect(function()
			local t = findSyringe()
			if t and syringeSelf then syringeSelf(t) end
		end)
	end
	local function setDnaBtn(on) dnaGui.Enabled = on and true or false end
	task.spawn(function()
		while alive() do task.wait(2) end
		pcall(function() dnaGui:Destroy() end)
	end)
	local function setSyringeLook(t, name, isSelf)
		local liq = t:FindFirstChild("Liquid")
		if name then
			t:SetAttribute("DNAName", name)
			t.ToolTip = "ДНК: " .. name
			if liq then liq.Color = isSelf and C(60, 255, 120) or C(255, 150, 40); liq.Transparency = 0.1 end
		else
			t:SetAttribute("DNAName", nil); t:SetAttribute("DNAUserId", nil); t:SetAttribute("DNASelf", nil)
			t.ToolTip = "ДНК: пусто"
			if liq then liq.Color = C(120, 130, 130); liq.Transparency = 0.85 end
		end
	end
	local function buildSyringe()
		local t = Instance.new("Tool")
		t.Name = SYR; t.ToolTip = "ДНК: пусто"; t.CanBeDropped = false; t.RequiresHandle = true
		t.GripPos = Vector3.new(0, 0, 0.6)
		local h = Instance.new("Part")
		h.Name = "Handle"; h.Size = Vector3.new(0.5, 0.5, 2.4); h.Color = C(215, 235, 240)
		h.Material = MAT.Glass; h.Transparency = 0.3; h.CanCollide = false; h.Parent = t
		local function add(nm, size, off, color, mat, tr)
			local p = Instance.new("Part")
			p.Name = nm; p.Size = size; p.Color = color; p.Material = mat or MAT.Metal; p.Transparency = tr or 0
			p.CanCollide = false; p.Massless = true; p.Parent = t
			local w = Instance.new("Weld"); w.Part0 = h; w.Part1 = p; w.C0 = CFrame.new(off); w.Parent = p
			return p
		end
		add("Liquid", Vector3.new(0.32, 0.32, 1.7), Vector3.new(0, 0, -0.1), C(120, 130, 130), MAT.Neon, 0.85)
		add("Needle", Vector3.new(0.08, 0.08, 1.1), Vector3.new(0, 0, -1.75), C(200, 205, 210))
		add("Rod", Vector3.new(0.14, 0.14, 1.0), Vector3.new(0, 0, 1.7), C(200, 205, 210))
		add("Pad", Vector3.new(0.8, 0.8, 0.12), Vector3.new(0, 0, 2.2), C(40, 200, 100), MAT.SmoothPlastic)
		add("Flange", Vector3.new(1.0, 0.12, 0.3), Vector3.new(0, 0, 1.0), C(40, 200, 100), MAT.SmoothPlastic)
		t.Activated:Connect(function() syringeUse(t) end)
		t.Equipped:Connect(function() setDnaBtn(true) end)
		t.Unequipped:Connect(function() setDnaBtn(false) end)
		t.Destroying:Connect(function() setDnaBtn(false) end)
		return t
	end
	local function giveSyringe()
		if findSyringe() then say("Шприц ДНК уже у тебя — достань его из инвентаря"); return end
		local bp = lp:FindFirstChildOfClass("Backpack")
		local t = buildSyringe()
		if bp then t.Parent = bp elseif lp.Character then t.Parent = lp.Character else t:Destroy(); return end
		say("Взял шприц ДНК. Своё — кнопка «ВЗЯТЬ СВОЁ ДНК» внизу, чужое — тапни шприцем рядом с игроком", 4.5)
	end

	-- шприц на столе
	do
		local sp = Instance.new("Part")
		sp.Anchored = true; sp.CanCollide = false; sp.Size = Vector3.new(0.5, 0.5, 2.4); sp.Material = MAT.Glass
		sp.Color = C(215, 235, 240); sp.Transparency = 0.3
		sp.CFrame = CFrame.new(at(12, FT + 3.7, 25)) * CFrame.Angles(0, math.rad(35), 0); sp.Parent = folder
		local li = box(11.8, FT + 3.55, 24.8, 12.2, FT + 3.85, 25.2, C(60, 255, 120), MAT.Neon, 0, true)
		li.CFrame = sp.CFrame * CFrame.new(0, 0, 0.1); li.Size = Vector3.new(0.3, 0.3, 1.6)
		local ap = anchorAt(12, FT + 4.5, 24.6, 4, 3, 4)
		billboard(ap, "ШПРИЦ ДНК", 130, 1.6, C(150, 255, 170))
		prompt(ap, "Взять шприц", SYR, Enum.KeyCode.E, giveSyringe, 10)
		local cd = Instance.new("ClickDetector"); cd.MaxActivationDistance = 12; cd.Parent = sp
		cd.MouseClick:Connect(giveSyringe)
	end

	local function nearestOther(maxd)
		local mr = hrp()
		if not mr then return nil end
		local best, bd = nil, nil
		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= lp and p.Character then
				local r = p.Character:FindFirstChild("HumanoidRootPart")
				if r then
					local d = (r.Position - mr.Position).Magnitude
					if d <= maxd and (bd == nil or d < bd) then best, bd = p, d end
				end
			end
		end
		return best
	end
	local function takeFrom(plr, t)
		local name, uid, isSelf
		if plr then
			name = plr.DisplayName; uid = plr.UserId; isSelf = false
			pcall(function() plr.Character.Archivable = true; sampleTpl[uid] = plr.Character:Clone() end)
		else
			name = lp.DisplayName; uid = lp.UserId; isSelf = true
		end
		t:SetAttribute("DNAUserId", uid); t:SetAttribute("DNASelf", isSelf)
		setSyringeLook(t, name, isSelf)
		say("ДНК взято: " .. name .. (isSelf and " (твоё)" or "") .. ". Вставь шприц в камеру в подвале", 3.5)
	end
	syringeUse = function(t)
		local plr = nearestOther(8)
		if plr then
			takeFrom(plr, t)
		else
			say("Рядом нет игрока. Своё ДНК — кнопка «ВЗЯТЬ СВОЁ ДНК» внизу экрана", 3.5)
		end
	end
	syringeSelf = function(t) takeFrom(nil, t) end

	-- «Взять ДНК» у других игроков (подойди и держи кнопку)
	local dnaPrompts = {}
	local function attachDNA(plr)
		if plr == lp then return end
		local function onChar(ch)
			local r = ch:WaitForChild("HumanoidRootPart", 10)
			if not r or r:FindFirstChild("PG_DNA") then return end
			local pp = Instance.new("ProximityPrompt")
			pp.Name = "PG_DNA"; pp.ActionText = "Взять ДНК"; pp.ObjectText = plr.DisplayName
			pp.HoldDuration = 1; pp.MaxActivationDistance = 9; pp.RequiresLineOfSight = false
			pp.KeyboardKeyCode = Enum.KeyCode.G; pp.Enabled = findSyringe() ~= nil; pp.Parent = r
			if SM.fancyPrompt then SM.fancyPrompt(pp) end
			dnaPrompts[#dnaPrompts + 1] = pp
			pp.Triggered:Connect(function()
				local t = findSyringe()
				if not t then say("Нужен шприц ДНК — он на столе в подвале Рика"); return end
				takeFrom(plr, t)
			end)
		end
		plr.CharacterAdded:Connect(onChar)
		if plr.Character then task.spawn(onChar, plr.Character) end
	end
	for _, p in ipairs(Players:GetPlayers()) do attachDNA(p) end
	Players.PlayerAdded:Connect(attachDNA)
	task.spawn(function()
		while alive() do
			task.wait(1.2)
			local has = findSyringe() ~= nil
			for i = #dnaPrompts, 1, -1 do
				local pp = dnaPrompts[i]
				if pp.Parent then pp.Enabled = has else table.remove(dnaPrompts, i) end
			end
		end
	end)

	----------------------------------------------------------------
	-- ВОЗРОЖДЕНИЕ (ФЕНИКС) + КОМПЛЕКТ
	----------------------------------------------------------------
	local function saveItems()
		local names = {}
		for _, it in ipairs(state.items) do names[#names + 1] = it.name end
		setS("phx_items", names)
	end
	local function loadAsset(id)
		local n = tonumber(id)
		if not n then return nil end
		local ok, res = pcall(function() return game:GetObjects("rbxassetid://" .. n) end)
		if ok and type(res) == "table" and res[1] then return res[1] end
		local ok2, m = pcall(function() return InsertService:LoadAsset(n) end)
		if ok2 and m then return m end
		return nil
	end
	local function applyLook(ch, loud)
		local hum = ch and ch:FindFirstChildOfClass("Humanoid")
		if not hum then return end
		local failed, applied = {}, 0
		local function addInst(o)
			if o:IsA("Accessory") then
				pcall(function() hum:AddAccessory(o:Clone()) end); applied = applied + 1
			elseif o:IsA("Shirt") or o:IsA("Pants") or o:IsA("ShirtGraphic") then
				for _, c in ipairs(ch:GetChildren()) do
					if c.ClassName == o.ClassName then c:Destroy() end
				end
				o:Clone().Parent = ch; applied = applied + 1
			end
		end
		local function one(id)
			local obj = loadAsset(id)
			if not obj then failed[#failed + 1] = tostring(id); return end
			if obj.ClassName == "Model" or obj.ClassName == "Folder" then
				for _, c in ipairs(obj:GetChildren()) do addInst(c) end
			else
				addInst(obj)
			end
		end
		for _, key in ipairs({ "phx_shirt", "phx_pants", "phx_tshirt" }) do
			local v = tostring(getS(key, "")):match("%d+")
			if v then one(v) end
		end
		for id in tostring(getS("phx_acc", "")):gmatch("%d+") do one(id) end
		if loud then
			if #failed > 0 then say("Не загрузились ID: " .. table.concat(failed, ", ") .. " (нужен executor с GetObjects или разрешённые ассеты)", 5)
			elseif applied > 0 then say("Одежда и аксессуары применены", 2.5) end
		end
	end
	local function restoreItems()
		local bp = lp:WaitForChild("Backpack", 8)
		task.wait(2.4) -- главный скрипт сам выдаёт пушку и флягу
		local function has(nm)
			return (bp and bp:FindFirstChild(nm)) or (lp.Character and lp.Character:FindFirstChild(nm))
		end
		for _, it in ipairs(state.items) do
			if not has(it.name) then
				if it.name == "Лазерный пистолет Рика" and SM.giveLaser then
					pcall(SM.giveLaser)
				elseif it.name == SYR then
					pcall(giveSyringe)
				elseif it.tpl then
					pcall(function() local c = it.tpl:Clone(); c.Parent = bp end)
				end
			end
		end
	end
	local function revive(ch)
		local root = ch:WaitForChild("HumanoidRootPart", 10)
		local hum = ch:WaitForChild("Humanoid", 10)
		if not root or not hum then return end
		local cx, cz = pod1.cx, pod1.cz
		local center = at(cx, FT + 4.6, cz)
		local T1, T2, T3 = 3.4, 0.9, 2.2
		local TOT = T1 + T2 + T3
		-- 1) сразу в капсулу, тело невидимо
		root.Anchored = true
		tpTo(pod1.spawn, Vector3.new(0, 0, 1))
		local saved = {}
		local function hideObj(o)
			if o == root then return end
			if o:IsA("BasePart") or o:IsA("Decal") then
				if saved[o] == nil then saved[o] = o.Transparency end
				o.Transparency = 1
			end
		end
		for _, o in ipairs(ch:GetDescendants()) do hideObj(o) end
		local hideConn = ch.DescendantAdded:Connect(hideObj)
		-- экран: чёрный → открывается, сверху панель прогресса
		local ov = Instance.new("ScreenGui")
		ov.Name = "PortalGunRevive"; ov.ResetOnSpawn = false; ov.IgnoreGuiInset = true; ov.DisplayOrder = 300; ov.Parent = pgui
		local black = Instance.new("Frame")
		black.Size = UDim2.fromScale(1, 1); black.BackgroundColor3 = C(0, 0, 0); black.BorderSizePixel = 0; black.Parent = ov
		local bigT = Instance.new("TextLabel")
		bigT.BackgroundTransparency = 1; bigT.AnchorPoint = Vector2.new(0.5, 0.5); bigT.Position = UDim2.fromScale(0.5, 0.45)
		bigT.Size = UDim2.fromOffset(520, 50); bigT.Font = Enum.Font.GothamBlack; bigT.TextSize = 34
		bigT.TextColor3 = C(110, 255, 150); bigT.Text = "ФЕНИКС"; bigT.Parent = ov
		local bigS = Instance.new("TextLabel")
		bigS.BackgroundTransparency = 1; bigS.AnchorPoint = Vector2.new(0.5, 0.5); bigS.Position = UDim2.fromScale(0.5, 0.45)
		bigS.Size = UDim2.fromOffset(520, 24); bigS.Font = Enum.Font.Gotham; bigS.TextSize = 16
		bigS.TextColor3 = C(170, 220, 190); bigS.Text = "восстановление сознания…"; bigS.Parent = ov
		bigS.Position = UDim2.new(0.5, 0, 0.45, 38)
		local hud = Instance.new("Frame")
		hud.AnchorPoint = Vector2.new(0.5, 0); hud.Position = UDim2.new(0.5, 0, 0, 70); hud.Size = UDim2.fromOffset(300, 56)
		hud.BackgroundColor3 = C(8, 20, 16); hud.BackgroundTransparency = 0.2; hud.Parent = ov
		local hc = Instance.new("UICorner"); hc.CornerRadius = UDim.new(0, 12); hc.Parent = hud
		local hs = Instance.new("UIStroke"); hs.Color = C(70, 255, 130); hs.Thickness = 2; hs.Parent = hud
		local hl = Instance.new("TextLabel")
		hl.BackgroundTransparency = 1; hl.Position = UDim2.fromOffset(12, 6); hl.Size = UDim2.new(1, -24, 0, 22)
		hl.Font = Enum.Font.GothamBold; hl.TextSize = 14; hl.TextColor3 = C(190, 255, 215)
		hl.TextXAlignment = Enum.TextXAlignment.Left; hl.Text = "ФЕНИКС · ВОССОЗДАНИЕ ДНК 0%"; hl.Parent = hud
		local hb = Instance.new("Frame")
		hb.Position = UDim2.fromOffset(12, 36); hb.Size = UDim2.new(1, -24, 0, 8); hb.BackgroundColor3 = C(30, 50, 42); hb.BorderSizePixel = 0; hb.Parent = hud
		local hf = Instance.new("Frame")
		hf.Size = UDim2.fromScale(0, 1); hf.BackgroundColor3 = C(70, 255, 130); hf.BorderSizePixel = 0; hf.Parent = hb
		local flashF = Instance.new("Frame")
		flashF.Size = UDim2.fromScale(1, 1); flashF.BackgroundColor3 = C(255, 255, 255); flashF.BackgroundTransparency = 1
		flashF.BorderSizePixel = 0; flashF.Parent = ov
		-- частицы-спираль ДНК
		local N = 26
		local strand = {}
		for i = 1, N do
			local p = Instance.new("Part")
			p.Shape = Enum.PartType.Ball; p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
			p.Material = MAT.Neon; p.Size = Vector3.new(0.32, 0.32, 0.32)
			p.Color = (i % 2 == 0) and C(90, 255, 170) or C(120, 200, 255); p.Parent = folder
			strand[i] = p
		end
		local cam = workspace.CurrentCamera
		local camPrevType = cam and cam.CameraType or Enum.CameraType.Custom
		if camPrevType == Enum.CameraType.Scriptable then camPrevType = Enum.CameraType.Custom end
		local feetY = root.Position.Y - 3
		local function ping(speed, vol)
			pcall(function()
				local sn = Instance.new("Sound")
				sn.SoundId = "rbxasset://sounds/electronicpingshort.wav"; sn.Volume = vol or 0.8; sn.PlaybackSpeed = speed or 1
				sn.Parent = SoundService; sn:Play(); Debris:AddItem(sn, 4)
			end)
		end
		local function camStep(t)
			if not cam then return end
			local q = math.clamp(t / TOT, 0, 1)
			local a = math.rad(205 - 80 * q)
			local r = 9.5 - 2 * q
			local cpos = Vector3.new(center.X + math.cos(a) * r, center.Y + 1.0 - 0.4 * q, center.Z + math.sin(a) * r)
			cam.CFrame = CFrame.lookAt(cpos, center + Vector3.new(0, -0.3, 0))
		end
		local ok, err = pcall(function()
			if cam then cam.CameraType = Enum.CameraType.Scriptable end
			pod1.glass.Transparency = 0.55
			pod1.liquid.Color = C(110, 255, 190)
			pod1.liquid.Transparency = 0.35
			pod1.setLiquidH(8.0)
			pod1.setGlow(1)
			pod1.setLed(C(255, 220, 90))
			pod1.setScreen("ФЕНИКС\nВОССОЗДАНИЕ ДНК…", C(255, 230, 140))
			pod1.scan.Transparency = 0.1
			ping(0.8, 0.8)
			say("ФЕНИКС: тебя возрождают в капсуле Рика", 3.5)
			camStep(0)
			local t0 = os.clock()
			local faded = false
			-- сборка: сканер идёт снизу вверх, тело появляется, спираль сходится
			while true do
				local t = os.clock() - t0
				if t >= T1 then break end
				if not root.Parent then error("gone") end
				if not faded and t > 0.5 then
					faded = true
					TweenService:Create(black, TweenInfo.new(0.9), { BackgroundTransparency = 1 }):Play()
					TweenService:Create(bigT, TweenInfo.new(0.9), { TextTransparency = 1 }):Play()
					TweenService:Create(bigS, TweenInfo.new(0.9), { TextTransparency = 1 }):Play()
				end
				local k = t / T1
				local e = k * k * (3 - 2 * k)
				local sH = -0.5 + 7 * e
				local rad = 2.3 * (1 - k * k) + 0.15
				for i, p in ipairs(strand) do
					local ang = t * 3.2 + (i % 2 == 0 and math.pi or 0) + math.floor((i - 1) / 2) * 0.55
					local hh = math.floor((i - 1) / 2) / (N / 2) * 7.2
					p.Position = Vector3.new(center.X + math.cos(ang) * rad, feetY + hh, center.Z + math.sin(ang) * rad)
				end
				pod1.scan.CFrame = CFrame.new(Vector3.new(center.X, feetY + sH, center.Z)) * CFrame.Angles(0, 0, math.pi / 2)
				for o, orig in pairs(saved) do
					local part = o:IsA("BasePart") and o or o.Parent
					if part and part:IsA("BasePart") then
						local rel = part.Position.Y - feetY
						local kk = math.clamp((sH - rel) / 0.9, 0, 1)
						o.Transparency = 1 - (1 - orig) * kk
					end
				end
				pod1.liquid.Transparency = 0.35 + 0.15 * math.sin(t * 10)
				pod1.light.Brightness = 1.2 + 0.8 * math.random()
				hl.Text = "ФЕНИКС · ВОССОЗДАНИЕ ДНК " .. math.floor(k * 100) .. "%"
				hf.Size = UDim2.fromScale(k, 1)
				camStep(t)
				RunService.Heartbeat:Wait()
			end
			hl.Text = "ФЕНИКС · ГОТОВО 100%"; hf.Size = UDim2.fromScale(1, 1)
			-- вспышка
			hideConn:Disconnect()
			for o, orig in pairs(saved) do pcall(function() o.Transparency = orig end) end
			for _, p in ipairs(strand) do p:Destroy() end
			pod1.scan.Transparency = 1
			local fl = Instance.new("Part")
			fl.Shape = Enum.PartType.Ball; fl.Anchored = true; fl.CanCollide = false; fl.CanQuery = false; fl.CanTouch = false; fl.CastShadow = false
			fl.Material = MAT.Neon; fl.Color = C(230, 255, 245); fl.Size = Vector3.new(2, 2, 2); fl.Position = center; fl.Parent = folder
			TweenService:Create(fl, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = Vector3.new(11, 11, 11), Transparency = 1 }):Play()
			Debris:AddItem(fl, 0.7)
			flashF.BackgroundTransparency = 0
			TweenService:Create(flashF, TweenInfo.new(0.7), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(hud, TweenInfo.new(0.8), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(hl, TweenInfo.new(0.8), { TextTransparency = 1 }):Play()
			TweenService:Create(hb, TweenInfo.new(0.8), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(hf, TweenInfo.new(0.8), { BackgroundTransparency = 1 }):Play()
			TweenService:Create(hs, TweenInfo.new(0.8), { Transparency = 1 }):Play()
			pod1.steam:Emit(36)
			ping(1.5, 1)
			pcall(function()
				local sn = Instance.new("Sound")
				sn.SoundId = "rbxasset://sounds/impact_explosion_03.mp3"; sn.Volume = 0.35; sn.PlaybackSpeed = 1.8
				sn.Parent = SoundService; sn:Play(); Debris:AddItem(sn, 5)
			end)
			pod1.setLed(C(80, 255, 140))
			pod1.setScreen("ВОЗРОЖДЕНИЕ\nЗАВЕРШЕНО", C(150, 255, 170))
			local t1 = os.clock()
			while true do
				local t = os.clock() - t0
				local u = (os.clock() - t1) / (T2 + T3)
				if u >= 1 then break end
				if not root.Parent then error("gone") end
				-- слив жидкости
				local d = math.clamp((t - T1 - T2) / T3, 0, 1)
				pod1.setLiquidH(math.max(0.05, 8.0 * (1 - d)))
				pod1.liquid.Transparency = 0.35 + 0.55 * d
				pod1.bubbles.Rate = 45 * (1 - d)
				pod1.light.Brightness = 1.2 * (1 - 0.5 * d)
				camStep(t)
				RunService.Heartbeat:Wait()
			end
			pod1.open()
		end)
		-- 4) выходишь сам; всё возвращаем как было (даже если что-то пошло не так)
		pcall(function() hideConn:Disconnect() end)
		for o, orig in pairs(saved) do pcall(function() o.Transparency = orig end) end
		for _, p in ipairs(strand) do pcall(function() p:Destroy() end) end
		pcall(function() pod1.scan.Transparency = 1 end)
		if cam then
			pcall(function()
				cam.CameraType = camPrevType
				cam.CameraSubject = hum
			end)
		end
		pcall(function() ov:Destroy() end)
		if root.Parent then
			root.Anchored = false
			pcall(function() hum:MoveTo(at(cx, FT + 3.4, cz + 4.8)) end)
		end
		if not ok then warn("[PortalGun] анимация возрождения: " .. tostring(err)) end
		task.spawn(function() task.wait(0.8); pcall(applyLook, ch, false) end)
		task.spawn(restoreItems)
		task.wait(2.5)
		pod1.setLiquidH(8.0)
		pod1.bubbles.Rate = 0
		pod1.close(state.phoenix)
		pod1.setLed(state.phoenix and C(80, 255, 140) or C(255, 90, 70))
		phoenixVisual()
	end
	local deathPending = false
	local function hookChar(ch)
		local hum = ch:WaitForChild("Humanoid", 10)
		if not hum then return end
		hum.Died:Connect(function()
			if state.phoenix then deathPending = true; say("ФЕНИКС: сознание сохранено, возрождение в капсуле…", 3) end
		end)
	end
	lp.CharacterAdded:Connect(function(ch)
		task.spawn(hookChar, ch)
		if deathPending then
			deathPending = false
			task.spawn(revive, ch)
		end
	end)
	if lp.Character then task.spawn(hookChar, lp.Character) end

	-- вставка шприца
	local function insertSyringe(pod)
		local t = findSyringe()
		if not t then say("Нужен шприц ДНК (стол в подвале)"); return end
		local name = t:GetAttribute("DNAName")
		if not name then say("Шприц пустой: нажми «ВЗЯТЬ СВОЁ ДНК» (или тапни шприцем рядом с игроком)"); return end
		local uid = t:GetAttribute("DNAUserId")
		local isSelf = t:GetAttribute("DNASelf") == true
		if pod == pod1 then
			if not isSelf then say("Феникс принимает только ТВОЁ ДНК. Чужое — в камеру клонирования справа"); return end
			setSyringeLook(t, nil)
			state.phoenix = true; setS("phx_on", true)
			pod1.liquid.Transparency = 0.2
			phoenixVisual()
			say("ФЕНИКС активирован: если умрёшь — возродишься в этой капсуле", 4)
		else
			if pod2.busy then say("Камера занята — подожди"); return end
			if isSelf then pcall(function() lp.Character.Archivable = true; sampleTpl[uid] = lp.Character:Clone() end) end
			setSyringeLook(t, nil)
			local sample = { name = name, uid = uid, tpl = sampleTpl[uid] }
			task.spawn(function()
				if #state.clones >= 4 then say("Максимум 4 клона — удали кого-нибудь в меню"); return end
				pod2.busy = true
				pod2.setGlow(1)
				pod2.setScreen("ВЫРАЩИВАНИЕ…\n" .. name, ORG)
				TweenService:Create(pod2.liquid, TweenInfo.new(1.0), { Transparency = 0.3 }):Play()
				local t0 = os.clock()
				while os.clock() - t0 < 6 and alive() do
					pod2.liquid.Transparency = 0.3 + 0.2 * math.abs(math.sin((os.clock() - t0) * 6))
					task.wait(0.05)
				end
				pod2.open()
				pcall(function() spawnClone(sample, pod2.spawn) end)
				pod2.setScreen("КЛОН ГОТОВ\n" .. name, C(150, 255, 170))
				task.wait(2.4)
				pod2.close(false)
				pod2.setScreen("КЛОНИРОВАНИЕ\nшприц с ДНК → клон", C(255, 190, 110))
				pod2.busy = false
			end)
		end
	end
	prompt(pod1.anchor, "Вставить шприц", "Феникс", Enum.KeyCode.E, function() insertSyringe(pod1) end, 10)
	prompt(pod2.anchor, "Вставить шприц", "Клонирование", Enum.KeyCode.E, function() insertSyringe(pod2) end, 10)

	-- МЕНЮ КАМЕРЫ ФЕНИКСА / КОМПЛЕКТА
	local menuA = makeMenu("PortalGunCloneMenu")
	local fv = { acc = tostring(getS("phx_acc", "")), shirt = tostring(getS("phx_shirt", "")), pants = tostring(getS("phx_pants", "")), tshirt = tostring(getS("phx_tshirt", "")) }
	local renderA
	local function myTools()
		local list = {}
		for _, holder in ipairs({ lp:FindFirstChildOfClass("Backpack"), lp.Character }) do
			if holder then
				for _, o in ipairs(holder:GetChildren()) do
					if o:IsA("Tool") then list[#list + 1] = o end
				end
			end
		end
		return list
	end
	renderA = function()
		local M = menuA
		M.clear()
		M.label("КАМЕРА КЛОНИРОВАНИЯ", 20)
		M.label(state.phoenix and ("ФЕНИКС: ВКЛ ● ДНК " .. lp.DisplayName) or "ФЕНИКС: ВЫКЛ — вставь шприц со своим ДНК в левую капсулу", 14,
			state.phoenix and C(120, 255, 150) or ORG)
		local g0 = M.grid()
		if state.phoenix then
			M.btn(g0, "⏏ Достать ДНК", function()
				state.phoenix = false; setS("phx_on", false); phoenixVisual(); renderA()
			end)
		end
		M.btn(g0, "✕ ЗАКРЫТЬ", function() menuA.gui.Enabled = false end)

		M.label("СЛОТЫ ВОЗРОЖДЕНИЯ", 16, YEL)
		M.label("Что вернётся к тебе после воскрешения. Пушка и фляга Рика выдаются сами.", 12, GREY)
		if #state.items == 0 then M.label("— слоты пусты —", 13, GREY) end
		local gs = M.grid()
		for i, it in ipairs(state.items) do
			local idx = i
			M.btn(gs, "▣ " .. it.name, function() end)
			M.btn(gs, "✕ убрать", function()
				table.remove(state.items, idx); saveItems(); renderA()
			end)
		end
		M.label("Положить из инвентаря:", 13, GREY)
		local gi = M.grid()
		local shown = 0
		for _, o in ipairs(myTools()) do
			local used = false
			for _, it in ipairs(state.items) do if it.name == o.Name then used = true end end
			if not used then
				shown = shown + 1
				M.btn(gi, "＋ " .. o.Name, function()
					if #state.items >= 8 then say("Все 8 слотов заняты"); return end
					local tpl = nil
					pcall(function() o.Archivable = true; tpl = o:Clone() end)
					state.items[#state.items + 1] = { name = o.Name, tpl = tpl }
					saveItems(); renderA()
					say("«" .. o.Name .. "» положено в слот", 2.5)
				end)
			end
		end
		if shown == 0 then M.label("— в инвентаре больше ничего нет —", 13, GREY) end

		M.label("ОДЕЖДА И АКСЕССУАРЫ (ID)", 16, YEL)
		M.label("Вводи ID из каталога Roblox. Аксессуары — несколько ID через пробел.", 12, GREY)
		local fa = M.field("Аксессуары: ID ID ID", fv.acc)
		local fs = M.field("Рубашка (Classic Shirt) ID", fv.shirt)
		local fp = M.field("Штаны (Classic Pants) ID", fv.pants)
		local ft = M.field("Футболка (T-Shirt) ID", fv.tshirt)
		local function readF()
			fv.acc = fa.Text; fv.shirt = fs.Text; fv.pants = fp.Text; fv.tshirt = ft.Text
			setS("phx_acc", fv.acc); setS("phx_shirt", fv.shirt); setS("phx_pants", fv.pants); setS("phx_tshirt", fv.tshirt)
		end
		local g2 = M.grid()
		M.btn(g2, "💾 Сохранить", function() readF(); say("Комплект сохранён: наденется при возрождении", 3) end)
		M.btn(g2, "👕 Надеть сейчас", function() readF(); task.spawn(applyLook, lp.Character, true) end)
	end
	local function openA() renderA(); menuA.gui.Enabled = true end
	prompt(pod1.anchor, "Меню камеры", "Феникс", Enum.KeyCode.F, openA, 10, -64)
	-- тап по пульту
	for _, host in ipairs({ pod1.anchor, pod1.screenPart }) do
		if host then
			local cd = Instance.new("ClickDetector"); cd.MaxActivationDistance = 12; cd.Parent = host
			cd.MouseClick:Connect(openA)
		end
	end

	----------------------------------------------------------------
	-- КЛОНЫ: карта дома (узлы + двери), выращивание, задачи
	----------------------------------------------------------------
	local FY1, FY2, FYB = 3.3, 15.3, FT + 3.3
	local NP, ADJ = {}, {}
	local function node(nm, x, y, z) NP[nm] = Vector3.new(x, y, z) end
	-- 1 этаж
	node("kit", 25, FY1, 14); node("kitL", 32, FY1, 11); node("liv", 45, FY1, 12); node("livR", 58, FY1, 13)
	node("red", 70, FY1, 12); node("livH", 54.5, FY1, 17.5); node("hallN", 54.5, FY1, 23); node("hall", 56, FY1, 30)
	node("dinE", 51, FY1, 29); node("dinW", 36, FY1, 29); node("din", 41, FY1, 31); node("kitS", 25, FY1, 29)
	node("dinN", 44, FY1, 24); node("dinOp", 44, FY1, 20); node("kitG", 18, FY1, 33)
	node("garA", 13.3, FY1, 33); node("gar", 13.3, FY1, 44); node("hatchTop", 9.5, FY1, 31.8)
	node("redOp", 69, FY1, 20); node("corr", 70, FY1, 22.5); node("corrOp", 73, FY1, 25); node("study", 73, FY1, 35)
	-- лестница и 2 этаж
	node("stA", 57.4, FY1, 37.0); node("st1", 61.6, 4.4, 37.4); node("stT", 61.6, FY2, 26.6)
	node("upH", 61.6, FY2, 24); node("upW", 54.5, FY2, 24); node("upE", 73, FY2, 24)
	node("sumD", 59, FY2, 20); node("sum", 58, FY2, 12); node("morD", 73, FY2, 20); node("mor", 74, FY2, 12)
	node("bathD", 54.5, FY2, 28); node("bath", 54.5, FY2, 33); node("jerD", 73, FY2, 28); node("jer", 73, FY2, 36)
	-- подвал
	node("hatchBot", 9.5, FYB, 36.8); node("lab", 14, FYB, 42)
	local EDGES = {
		{ "kit", "kitL" }, { "kitL", "liv" }, { "liv", "livR" }, { "livR", "red" }, { "liv", "livH" }, { "livH", "hallN" },
		{ "hallN", "hall" }, { "hall", "dinE" }, { "dinE", "din" }, { "din", "dinW" }, { "dinW", "kitS" }, { "kit", "kitS" },
		{ "din", "dinN" }, { "dinN", "dinOp" }, { "dinOp", "liv" }, { "kitS", "kitG" }, { "kitG", "garA" }, { "garA", "gar" },
		{ "garA", "hatchTop" }, { "red", "redOp" }, { "redOp", "corr" }, { "corr", "corrOp" }, { "corrOp", "study" },
		{ "hall", "stA" }, { "stA", "st1" }, { "st1", "stT" }, { "stT", "upH" }, { "upH", "upW" }, { "upH", "upE" },
		{ "upH", "sumD" }, { "sumD", "sum" }, { "upE", "morD" }, { "morD", "mor" }, { "upW", "bathD" }, { "bathD", "bath" },
		{ "upE", "jerD" }, { "jerD", "jer" }, { "hatchTop", "hatchBot" }, { "hatchBot", "lab" },
	}
	for _, e in ipairs(EDGES) do
		ADJ[e[1]] = ADJ[e[1]] or {}; ADJ[e[2]] = ADJ[e[2]] or {}
		table.insert(ADJ[e[1]], e[2]); table.insert(ADJ[e[2]], e[1])
	end
	local function nearestNode(rel)
		local best, bd = nil, nil
		for nm, p in pairs(NP) do
			local d = math.sqrt((p.X - rel.X) ^ 2 + (p.Z - rel.Z) ^ 2) + 4 * math.abs(p.Y - rel.Y)
			if bd == nil or d < bd then best, bd = nm, d end
		end
		return best
	end
	local function bfs(a, b)
		if a == b then return { a } end
		local prev, queue, qi = { [a] = false }, { a }, 1
		while qi <= #queue do
			local cur = queue[qi]; qi = qi + 1
			for _, nx in ipairs(ADJ[cur] or {}) do
				if prev[nx] == nil then
					prev[nx] = cur
					if nx == b then
						local path, n = {}, b
						while n do table.insert(path, 1, n); n = prev[n] end
						return path
					end
					queue[#queue + 1] = nx
				end
			end
		end
		return nil
	end
	local function inHouseArea(rel)
		return rel.X > -4 and rel.X < 83 and rel.Z > 2 and rel.Z < 63 and rel.Y > -19 and rel.Y < 26
	end
	local function planRoute(sw, ew)
		local rs, re = sw - O, ew - O
		if not (inHouseArea(rs) and inHouseArea(re)) then return { { pos = ew } } end
		local names = bfs(nearestNode(rs), nearestNode(re))
		if not names then return { { pos = ew } } end
		local out = {}
		for i, nm in ipairs(names) do
			local prev = names[i - 1]
			local tp = (prev == "hatchTop" and nm == "hatchBot") or (prev == "hatchBot" and nm == "hatchTop")
			out[#out + 1] = { pos = O + NP[nm], tp = tp }
		end
		out[#out + 1] = { pos = ew }
		return out
	end
	local ROOMS = {
		{ "Кухня", "kit" }, { "Столовая", "din" }, { "Гостиная", "liv" }, { "Прихожая", "hall" },
		{ "Красная гостиная", "red" }, { "Кабинет", "study" }, { "Гараж", "gar" },
		{ "Комната Саммер", "sum" }, { "Комната Морти", "mor" }, { "Спальня Джерри и Бет", "jer" },
		{ "Ванная", "bath" }, { "Подвал: лаборатория", "lab" },
	}

	local R15_IDLE, R15_WALK = "rbxassetid://507766666", "rbxassetid://507777826"
	local R6_IDLE, R6_WALK = "rbxassetid://180435571", "rbxassetid://180426354"
	local renderB
	local menuB

	local function stale(cl, tok) return (not cl.alive) or cl.token ~= tok or not alive() end
	local function walkTo(cl, tok, pos, tp)
		local root, hum = cl.root, cl.hum
		if tp then
			root.CFrame = CFrame.new(pos)
			return true
		end
		hum:MoveTo(pos)
		local t0, lt, lp0 = os.clock(), os.clock(), root.Position
		while not stale(cl, tok) do
			local d = Vector3.new(root.Position.X - pos.X, 0, root.Position.Z - pos.Z).Magnitude
			if d < 2.4 then return true end
			local now = os.clock()
			if now - lt > 1.0 then
				if (root.Position - lp0).Magnitude < 0.8 then hum.Jump = true; hum:MoveTo(pos) end
				lp0 = root.Position; lt = now
			end
			if now - t0 > 12 then
				root.CFrame = CFrame.new(pos) -- застрял: переносим
				return true
			end
			task.wait(0.12)
		end
		return false
	end
	local function goTo(cl, tok, dest)
		local route = planRoute(cl.root.Position, dest)
		for _, wp in ipairs(route) do
			if stale(cl, tok) then return false end
			if not walkTo(cl, tok, wp.pos, wp.tp) then return false end
		end
		return true
	end
	local function setLabel(cl, text)
		cl.taskText = text
		if cl.bbl then cl.bbl.Text = text end
		if menuB and menuB.gui.Enabled and renderB then pcall(renderB) end
	end
	local function runTask(cl, tok, key, arg)
		if key == "stay" then
			setLabel(cl, "Стою")
			cl.hum:MoveTo(cl.root.Position)
		elseif key == "follow" then
			setLabel(cl, "Иду за тобой")
			while not stale(cl, tok) do
				local pr = hrp()
				if pr then
					local d = (pr.Position - cl.root.Position).Magnitude
					if d > 80 and not inHouseArea(pr.Position - O) then
						cl.root.CFrame = pr.CFrame * CFrame.new(3, 0, 4)
					elseif d > 7 then
						goTo(cl, tok, pr.Position - pr.CFrame.LookVector * 3)
					end
				end
				task.wait(0.4)
			end
		elseif key == "come" then
			setLabel(cl, "Иду к тебе")
			local pr = hrp()
			if pr and goTo(cl, tok, pr.Position) then setLabel(cl, "Пришёл") end
		elseif key == "goto" then
			setLabel(cl, "Иду: " .. arg[1])
			if goTo(cl, tok, O + NP[arg[2]]) then setLabel(cl, "Я тут: " .. arg[1]) end
		elseif key == "patrol" or key == "clean" then
			while not stale(cl, tok) do
				for _, r in ipairs(ROOMS) do
					if stale(cl, tok) then return end
					setLabel(cl, (key == "clean" and "Убираюсь: " or "Проверяю: ") .. r[1])
					if not goTo(cl, tok, O + NP[r[2]]) then return end
					local t0 = os.clock()
					while os.clock() - t0 < 3.5 and not stale(cl, tok) do
						if key == "clean" then cl.hum.Jump = true; task.wait(0.9) else task.wait(0.3) end
					end
				end
			end
		elseif key == "guard" then
			setLabel(cl, "Иду к входу")
			if goTo(cl, tok, O + Vector3.new(56.2, FY1, 33)) then
				cl.root.CFrame = CFrame.lookAt(cl.root.Position, Vector3.new(O.X + 56.2, cl.root.Position.Y, O.Z + 42))
				setLabel(cl, "Охраняю вход")
			end
		end
	end
	local function setTask(cl, key, arg)
		cl.token = cl.token + 1
		local tok = cl.token
		task.spawn(runTask, cl, tok, key, arg)
	end
	local function removeClone(cl)
		cl.alive = false
		for i, c in ipairs(state.clones) do
			if c == cl then table.remove(state.clones, i); break end
		end
		if cl.conn then cl.conn:Disconnect() end
		if cl.model then cl.model:Destroy() end
	end

	spawnClone = function(sample, worldPos)
		local model = nil
		if sample.tpl then pcall(function() model = sample.tpl:Clone() end) end
		if not model then pcall(function() model = Players:CreateHumanoidModelFromUserId(sample.uid) end) end
		if not model then say("Не удалось вырастить клона (нет модели игрока)"); return end
		for _, d in ipairs(model:GetDescendants()) do
			if d:IsA("Script") or d:IsA("LocalScript") or d:IsA("Tool") or d:IsA("ProximityPrompt") or d:IsA("ForceField") then d:Destroy() end
		end
		local hum = model:FindFirstChildOfClass("Humanoid")
		local root = model:FindFirstChild("HumanoidRootPart")
		if not hum or not root then model:Destroy(); say("Клон не получился (нет скелета)"); return end
		model.Name = "Клон " .. sample.name
		model.PrimaryPart = root
		hum.DisplayName = "[КЛОН] " .. sample.name
		hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
		hum.WalkSpeed = 15; hum.MaxHealth = 100; hum.Health = 100
		for _, d in ipairs(model:GetDescendants()) do
			if d:IsA("BasePart") then d.Anchored = false end
		end
		model:PivotTo(CFrame.new(worldPos))
		model.Parent = folder
		local cl = { model = model, hum = hum, root = root, name = sample.name, alive = true, token = 0, taskText = "Стою" }
		-- подпись задачи
		local head = model:FindFirstChild("Head")
		if head then
			local bb = Instance.new("BillboardGui")
			bb.Size = UDim2.fromOffset(190, 24); bb.StudsOffset = Vector3.new(0, 4.4, 0); bb.AlwaysOnTop = true
			bb.MaxDistance = 55; bb.LightInfluence = 0; bb.Parent = head
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency = 1; l.Size = UDim2.fromScale(1, 1); l.TextScaled = true; l.Font = Enum.Font.Code
			l.Text = "Стою"; l.TextColor3 = C(255, 215, 120); l.TextStrokeTransparency = 0.3; l.Parent = bb
			cl.bbl = l
		end
		-- анимации ходьбы
		local animator = hum:FindFirstChildOfClass("Animator")
		if not animator then animator = Instance.new("Animator"); animator.Parent = hum end
		local r6 = hum.RigType == Enum.HumanoidRigType.R6
		local function mk(id)
			local a = Instance.new("Animation"); a.AnimationId = id
			local ok, tr = pcall(function() return animator:LoadAnimation(a) end)
			if ok and tr then tr.Looping = true; return tr end
			return nil
		end
		local idle, walk = mk(r6 and R6_IDLE or R15_IDLE), mk(r6 and R6_WALK or R15_WALK)
		cl.conn = RunService.Heartbeat:Connect(function()
			if not cl.alive or not model.Parent then return end
			local moving = hum.MoveDirection.Magnitude > 0.1
			if moving then
				if walk and not walk.IsPlaying then walk:Play(0.15) end
				if idle and idle.IsPlaying then idle:Stop(0.15) end
				if walk then walk:AdjustSpeed(hum.WalkSpeed / 14) end
			else
				if walk and walk.IsPlaying then walk:Stop(0.15) end
				if idle and not idle.IsPlaying then idle:Play(0.15) end
			end
		end)
		hum.Died:Connect(function() task.delay(2, function() removeClone(cl) end) end)
		-- подсказка у самого клона
		local pp = Instance.new("ProximityPrompt")
		pp.ActionText = "Дать задачу"; pp.ObjectText = "Клон " .. sample.name; pp.HoldDuration = 0
		pp.MaxActivationDistance = 8; pp.RequiresLineOfSight = false; pp.KeyboardKeyCode = Enum.KeyCode.F; pp.Parent = root
		pp.Triggered:Connect(function()
			for i, c in ipairs(state.clones) do if c == cl then openCloneMenu(i) end end
		end)
		state.clones[#state.clones + 1] = cl
		say("Клон «" .. sample.name .. "» готов! Дай ему задачу (подойди и нажми F)", 4)
	end

	-- МЕНЮ КЛОНОВ
	menuB = makeMenu("PortalGunClonesTasks")
	local selIdx = 1
	renderB = function()
		local M = menuB
		M.clear()
		M.label("КЛОНЫ И ЗАДАЧИ", 20)
		if #state.clones == 0 then
			M.label("Клонов нет. Возьми шприцем ДНК игрока (подойди, зажми «Взять ДНК») или своё, и вставь в правую камеру.", 13, GREY)
			local g = M.grid()
			M.btn(g, "✕ ЗАКРЫТЬ", function() menuB.gui.Enabled = false end)
			return
		end
		if selIdx > #state.clones then selIdx = #state.clones end
		if selIdx < 1 then selIdx = 1 end
		local gsel = M.grid()
		for i, c in ipairs(state.clones) do
			local idx = i
			M.btn(gsel, (idx == selIdx and "● " or "○ ") .. c.name, function() selIdx = idx; renderB() end)
		end
		local cl = state.clones[selIdx]
		M.label("Сейчас: " .. tostring(cl.taskText), 14, YEL)
		M.label("ЗАДАЧА", 16, YEL)
		local g1 = M.grid()
		M.btn(g1, "🚶 Следовать за мной", function() setTask(cl, "follow") end)
		M.btn(g1, "✋ Стоять", function() setTask(cl, "stay") end)
		M.btn(g1, "📍 Прийти ко мне", function() setTask(cl, "come") end)
		M.btn(g1, "🔍 Патруль по дому", function() setTask(cl, "patrol") end)
		M.btn(g1, "🧹 Убираться по дому", function() setTask(cl, "clean") end)
		M.btn(g1, "🛡 Охранять вход", function() setTask(cl, "guard") end)
		M.label("ИДТИ В КОМНАТУ", 16, YEL)
		local g2 = M.grid()
		for _, r in ipairs(ROOMS) do
			local room = r
			M.btn(g2, room[1], function() setTask(cl, "goto", room) end)
		end
		local g3 = M.grid()
		M.btn(g3, "🗑 Удалить клона", function() removeClone(cl); renderB() end)
		M.btn(g3, "✕ ЗАКРЫТЬ", function() menuB.gui.Enabled = false end)
	end
	openCloneMenu = function(i)
		if i then selIdx = i end
		renderB(); menuB.gui.Enabled = true
	end
	prompt(pod2.anchor, "Клоны и задачи", "Клонирование", Enum.KeyCode.F, function() openCloneMenu() end, 10, -64)
	do
		local cd = Instance.new("ClickDetector"); cd.MaxActivationDistance = 12; cd.Parent = pod2.screenPart
		cd.MouseClick:Connect(function() openCloneMenu() end)
	end

	----------------------------------------------------------------
	-- ПОГОДА v6: косые струи с порывами ветра, брызги, капли на стёклах, молнии и гром
	----------------------------------------------------------------
	do
		SM.newRain = true
		local N = 320
		local drops = {}
		for i = 1, N do
			local p = Instance.new("Part")
			p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
			p.Size = Vector3.new(0.035, 0.035, 2.6); p.Color = C(200, 218, 240); p.Transparency = 0.5; p.Material = MAT.SmoothPlastic
			p.CFrame = CFrame.new(0, -5000, 0); p.Parent = fx
			drops[i] = { part = p, on = false, pos = Vector3.new(0, 0, 0), vel = Vector3.new(0, -70, 0) }
		end
		local splash = {}
		for i = 1, 26 do
			local p = Instance.new("Part")
			p.Shape = Enum.PartType.Cylinder; p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
			p.Size = Vector3.new(0.03, 0.3, 0.3); p.Color = C(215, 228, 245); p.Material = MAT.SmoothPlastic; p.Transparency = 1
			p.CFrame = CFrame.new(0, -5000, 0); p.Parent = fx
			splash[i] = { part = p, t = 9, pos = Vector3.new(0, 0, 0) }
		end
		local rp = RaycastParams.new()
		rp.FilterType = Enum.RaycastFilterType.Exclude

		-- ЗВУК ДОЖДЯ (по желанию: свой ID в терминале)
		local rainSnd = Instance.new("Sound")
		rainSnd.Looped = true; rainSnd.Volume = 0; rainSnd.Name = "PGRainLoop"; rainSnd.Parent = SoundService
		local curRainId = ""
		local function syncRainId()
			local id = tostring(getS("rain_id", "")):match("%d+") or ""
			if id ~= curRainId then
				curRainId = id
				rainSnd:Stop()
				rainSnd.SoundId = id ~= "" and ("rbxassetid://" .. id) or ""
			end
		end

		-- ГРОМ И МОЛНИЯ
		local function thunder(dist)
			local inBase = SM.inBasement
			local inside = SM.isInside and SM.isInside()
			task.delay(math.clamp(dist / 140, 0.4, 3.5), function()
				local s = Instance.new("Sound")
				local id = tostring(getS("thunder_id", "")):match("%d+")
				if id then
					s.SoundId = "rbxassetid://" .. id; s.PlaybackSpeed = 0.92 + math.random() * 0.16
				else
					s.SoundId = "rbxasset://sounds/impact_explosion_03.mp3"; s.PlaybackSpeed = 0.38 + math.random() * 0.16
				end
				s.Volume = inBase and 0.25 or (inside and 0.5 or 1)
				local eq = Instance.new("EqualizerSoundEffect")
				eq.HighGain = (inside or inBase) and -30 or -20; eq.MidGain = -6; eq.LowGain = 5; eq.Parent = s
				local rv = Instance.new("ReverbSoundEffect")
				rv.DecayTime = 4; rv.Density = 1; rv.Diffusion = 1; rv.DryLevel = -4; rv.WetLevel = 0; rv.Parent = s
				s.Parent = SoundService
				s:Play()
				Debris:AddItem(s, 14)
			end)
		end
		SM.onBolt = function()
			local cam = workspace.CurrentCamera
			if not cam then return end
			local cpos = cam.CFrame.Position
			local ang = math.random() * math.pi * 2
			local dist = 150 + math.random() * 350
			if not SM.inBasement then
				local top = Vector3.new(cpos.X + math.cos(ang) * dist, cpos.Y + 260 + math.random() * 80, cpos.Z + math.sin(ang) * dist)
				local bot = Vector3.new(top.X + (math.random() - 0.5) * 40, cpos.Y - 6, top.Z + (math.random() - 0.5) * 40)
				local pts = { top }
				local n = 9
				for i = 1, n - 1 do
					local t = i / n
					local p = top:Lerp(bot, t)
					pts[#pts + 1] = p + Vector3.new((math.random() - 0.5) * 36, 0, (math.random() - 0.5) * 36)
				end
				pts[#pts + 1] = bot
				local segs = {}
				for i = 1, #pts - 1 do
					local a, b = pts[i], pts[i + 1]
					local p = Instance.new("Part")
					p.Anchored = true; p.CanCollide = false; p.CanQuery = false; p.CanTouch = false; p.CastShadow = false
					p.Material = MAT.Neon; p.Color = C(225, 235, 255)
					p.Size = Vector3.new(1.1, 1.1, (b - a).Magnitude + 0.4)
					p.CFrame = CFrame.lookAt((a + b) / 2, b)
					p.Parent = fx
					segs[#segs + 1] = p
				end
				task.spawn(function()
					task.wait(0.07)
					for _, s in ipairs(segs) do s.Transparency = 0.7 end
					task.wait(0.06)
					for _, s in ipairs(segs) do s.Transparency = 0 end
					task.wait(0.1)
					for _, s in ipairs(segs) do
						TweenService:Create(s, TweenInfo.new(0.25), { Transparency = 1 }):Play()
					end
					task.wait(0.3)
					for _, s in ipairs(segs) do s:Destroy() end
				end)
			end
			thunder(dist)
		end

		-- КАПЛИ НА СТЁКЛАХ
		local wins = {}
		for _, d in ipairs(houseF:GetChildren()) do
			if d:IsA("BasePart") and d.Material == MAT.Glass and d.Transparency > 0.3 and d.Transparency < 0.7 then
				local s = d.Size
				if s.Y > 2 and s.Y < 12 and math.min(s.X, s.Z) < 0.4 and math.max(s.X, s.Z) > 1.5 then
					wins[#wins + 1] = d
					if #wins >= 48 then break end
				end
			end
		end
		local faces = {} -- {gui, W, H, d = {...}, part}
		local built = 0
		local function makeFace(part, face)
			local s = part.Size
			local alongX = (face == Enum.NormalId.Front or face == Enum.NormalId.Back)
			local w = (alongX and s.X or s.Z) * 24
			local h = s.Y * 24
			local sg = Instance.new("SurfaceGui")
			sg.Name = "PGRain"; sg.Face = face; sg.Adornee = part; sg.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
			sg.CanvasSize = Vector2.new(math.floor(w), math.floor(h)); sg.LightInfluence = 0.4; sg.AlwaysOnTop = false
			sg.ResetOnSpawn = false; sg.Enabled = false; sg.Parent = pgui
			local F = { gui = sg, W = w, H = h, part = part, d = {} }
			for k = 1, 6 do
				local tr = Instance.new("Frame")
				tr.BackgroundColor3 = C(225, 238, 250); tr.BackgroundTransparency = 0.82; tr.BorderSizePixel = 0
				tr.Size = UDim2.fromOffset(2, 0); tr.Parent = sg
				local fr = Instance.new("Frame")
				local sz = math.random(5, 11)
				fr.BackgroundColor3 = C(225, 238, 250); fr.BackgroundTransparency = 0.45; fr.BorderSizePixel = 0
				fr.Size = UDim2.fromOffset(sz, math.floor(sz * 1.35))
				local cn = Instance.new("UICorner"); cn.CornerRadius = UDim.new(1, 0); cn.Parent = fr
				fr.Parent = sg
				F.d[k] = { f = fr, tr = tr, x = math.random() * w, y = math.random() * h, v = 15 + math.random() * 50, pause = math.random() * 1.5, sz = sz, trail = 0 }
			end
			faces[#faces + 1] = F
		end
		local function buildSomeFaces()
			local per = 3
			while per > 0 and built < #wins do
				built = built + 1
				local part = wins[built]
				local thinZ = part.Size.Z < part.Size.X
				if thinZ then
					makeFace(part, Enum.NormalId.Front); makeFace(part, Enum.NormalId.Back)
				else
					makeFace(part, Enum.NormalId.Left); makeFace(part, Enum.NormalId.Right)
				end
				per = per - 1
			end
		end

		-- ГЛАВНЫЙ ЦИКЛ
		local splashAcc, checkAcc, soundAcc = 0, 0, 0
		local conn
		conn = RunService.Heartbeat:Connect(function(dt)
			if not alive() then
				conn:Disconnect()
				for _, d in ipairs(drops) do d.part:Destroy() end
				for _, s in ipairs(splash) do s.part:Destroy() end
				for _, F in ipairs(faces) do F.gui:Destroy() end
				rainSnd:Destroy()
				return
			end
			local cam = workspace.CurrentCamera
			if not cam then return end
			local cpos = cam.CFrame.Position
			local w = SM.weather
			local inten, windMul = 0, 1
			if w == "rain" then inten, windMul = 0.6, 1 elseif w == "storm" then inten, windMul = 1, 1.8 end
			local rel = cpos - O
			local under = rel.X > -6 and rel.X < 42 and rel.Z > 20 and rel.Z < 64 and rel.Y < -3 and rel.Y > -20
			SM.inBasement = under
			if under then inten = 0 end
			if inten > 0 and built < #wins then buildSomeFaces() end

			local t = os.clock()
			local gust = 0.55 + 0.45 * math.sin(t * 0.31) + 0.2 * math.sin(t * 1.3)
			local wind = Vector3.new(-9, 0, 4) * gust * windMul
			local nOn = math.floor(N * inten)
			for i = 1, N do
				local d = drops[i]
				if i <= nOn then
					local needSpawn = not d.on
					if needSpawn then d.on = true end
					if not needSpawn then
						d.pos = d.pos + d.vel * dt
						d.vel = Vector3.new(wind.X, d.vel.Y, wind.Z)
						local r = d.pos - O
						if d.pos.Y < cpos.Y - 24 or (r.X > 1.5 and r.X < 82.5 and r.Z > 2.5 and r.Z < 57.5 and r.Y > -1 and r.Y < 24.5) then needSpawn = true end
					end
					if needSpawn then
						local a = math.random() * math.pi * 2
						local rr = math.sqrt(math.random()) * 42
						d.pos = Vector3.new(cpos.X + math.cos(a) * rr, cpos.Y + 6 + math.random() * 36, cpos.Z + math.sin(a) * rr)
						d.vel = Vector3.new(wind.X, -68 - math.random() * 22, wind.Z)
					end
					d.part.CFrame = CFrame.lookAt(d.pos, d.pos + d.vel)
				elseif d.on then
					d.on = false
					d.part.CFrame = CFrame.new(0, -5000, 0)
				end
			end

			-- брызги / круги на земле и крышах
			if inten > 0 then
				splashAcc = splashAcc + dt * 55 * inten
				rp.FilterDescendantsInstances = { fx, lp.Character }
				while splashAcc >= 1 do
					splashAcc = splashAcc - 1
					for _, s in ipairs(splash) do
						if s.t > 0.4 then
							local x = cpos.X + (math.random() - 0.5) * 52
							local z = cpos.Z + (math.random() - 0.5) * 52
							local res = workspace:Raycast(Vector3.new(x, cpos.Y + 24, z), Vector3.new(0, -70, 0), rp)
							if res then
								s.pos = res.Position + Vector3.new(0, 0.06, 0)
								s.t = 0
							end
							break
						end
					end
				end
			end
			for _, s in ipairs(splash) do
				if s.t <= 0.4 then
					s.t = s.t + dt
					local k = math.min(1, s.t / 0.4)
					local sz = 0.2 + k * 1.5
					s.part.Size = Vector3.new(0.03, sz, sz)
					s.part.CFrame = CFrame.new(s.pos) * CFrame.Angles(0, 0, math.pi / 2)
					s.part.Transparency = 0.35 + 0.65 * k
				elseif s.part.Transparency < 1 then
					s.part.Transparency = 1
					s.part.CFrame = CFrame.new(0, -5000, 0)
				end
			end

			-- капли на окнах: включаем только ближние
			checkAcc = checkAcc + dt
			if checkAcc > 0.5 then
				checkAcc = 0
				for _, F in ipairs(faces) do
					local near = inten > 0 and F.part.Parent ~= nil and (F.part.Position - cpos).Magnitude < 45
					if F.gui.Enabled ~= near then F.gui.Enabled = near end
				end
			end
			local spd = 0.6 + 0.4 * windMul
			for _, F in ipairs(faces) do
				if F.gui.Enabled then
					for _, d in ipairs(F.d) do
						if d.pause > 0 then
							d.pause = d.pause - dt
						else
							d.y = d.y + d.v * dt * spd
							d.trail = math.min(d.trail + d.v * dt * 0.45, 46)
							if math.random() < dt * 0.7 then d.pause = 0.2 + math.random() * 1.2; d.v = 12 + math.random() * 55 end
							if d.y > F.H + 10 then d.y = -8; d.x = math.random() * F.W; d.trail = 0 end
						end
						d.f.Position = UDim2.fromOffset(d.x, d.y)
						d.tr.Position = UDim2.fromOffset(d.x + d.sz / 2 - 1, d.y - d.trail)
						d.tr.Size = UDim2.fromOffset(2, d.trail)
					end
				end
			end

			-- звук дождя
			soundAcc = soundAcc + dt
			if soundAcc > 1 then soundAcc = 0; syncRainId() end
			if curRainId ~= "" then
				local target = 0
				if w == "rain" or w == "storm" then
					target = 0.35 * (w == "storm" and 1.3 or 1)
					if under then target = target * 0.2 elseif SM.isInside and SM.isInside() then target = target * 0.5 end
				end
				rainSnd.Volume = rainSnd.Volume + (target - rainSnd.Volume) * math.min(1, dt * 1.5)
				if target > 0 and not rainSnd.IsPlaying then rainSnd:Play() end
				if target == 0 and rainSnd.Volume < 0.01 and rainSnd.IsPlaying then rainSnd:Pause() end
			end
		end)

		-- поля для звуков в терминале погоды
		task.spawn(function()
			local g = pgui:WaitForChild("PortalGunTerminal", 8)
			if not g then return end
			local sc = g:FindFirstChildWhichIsA("ScrollingFrame", true)
			if not sc then return end
			local ord = 1000
			local function lbl(text, col)
				ord = ord + 1
				local l = Instance.new("TextLabel")
				l.BackgroundTransparency = 1; l.Size = UDim2.new(1, 0, 0, 24); l.AutomaticSize = Enum.AutomaticSize.Y
				l.Text = text; l.TextSize = 13; l.TextWrapped = true; l.TextXAlignment = Enum.TextXAlignment.Left
				l.Font = Enum.Font.Code; l.TextColor3 = col or C(200, 220, 210); l.LayoutOrder = ord; l.Parent = sc
			end
			local function fld(ph, key)
				ord = ord + 1
				local b = Instance.new("TextBox")
				b.Size = UDim2.new(1, 0, 0, 38); b.BackgroundColor3 = C(24, 34, 32); b.TextColor3 = C(235, 255, 240)
				b.PlaceholderText = ph; b.PlaceholderColor3 = C(120, 150, 140); b.Text = tostring(getS(key, ""))
				b.Font = Enum.Font.Code; b.TextSize = 14; b.ClearTextOnFocus = false; b.LayoutOrder = ord; b.Parent = sc
				local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 8); c.Parent = b
				b.FocusLost:Connect(function() setS(key, b.Text:match("%d+") or "") end)
			end
			lbl("ЗВУКИ (ID аудио из каталога Roblox)", C(255, 230, 140))
			fld("ID грома", "thunder_id")
			fld("ID дождя (петля)", "rain_id")
			lbl("Пусто → гром встроенный (глухой раскат), дождь без звука.", C(160, 180, 170))
		end)
	end

	say("v6: подвал Рика без кнопок, свои кнопки взаимодействия, воскрешение в капсуле, пистолет на столе в гараже", 5)
end)
if not okB then warn("[PortalGun] v6 (подвал/клоны/погода) не построился: " .. tostring(errB)) end
end

----------------------------------------------------------------------
-- КОРАБЛЬ РИКА: большой портал в небе -> корабль вылетает -> можно сесть и лететь
----------------------------------------------------------------------
local ShipOk, Ship = pcall(function()
	local REST_H = 3.6                         -- высота центра корабля над землёй, когда он стоит (колёса чуть над землёй)
	local SEAT = Vector3.new(1.25, 3.9, -0.8)  -- где сидит игрок (относительно центра корабля)
	local SKY_D = 34                           -- диаметр большого портала (студы)
	local ship = nil -- { model, cf, state = arriving|parked|riding|leaving, vel, yaw, lean, t, groundY }
	local upHeld, downHeld = false, false

	------------------------------------------------------------------
	-- МОДЕЛЬ КОРАБЛЯ (летающая тарелка Рика: купол с аркой, оранжевые полосы,
	-- кресла, две «мусорные бочки»-двигателя со шлангами, фары, наклейки, колёса)
	------------------------------------------------------------------
	local function buildShip()
		local m = Instance.new("Model")
		m.Name = "RickShip"
		local MET, SP, GLASS, NEON, PLASTIC = Enum.Material.Metal, Enum.Material.SmoothPlastic, Enum.Material.Glass, Enum.Material.Neon, Enum.Material.Plastic
		local BLOCK, CYL, BALL = Enum.PartType.Block, Enum.PartType.Cylinder, Enum.PartType.Ball
		local V = CFrame.Angles(0, 0, math.pi / 2) -- цилиндр стоит вертикально
		local function along(pos, dir) -- цилиндр лежит вдоль направления dir
			return CFrame.lookAt(pos, pos + dir) * CFrame.Angles(0, math.pi / 2, 0)
		end
		local function part(name, shape, size, cf, color, mat, tr, mesh)
			local p = Instance.new("Part")
			p.Name = name
			p.Shape = shape
			p.Anchored = true
			p.CanCollide = false
			p.CanQuery = false
			p.CanTouch = false
			p.Size = size
			p.CFrame = cf
			p.Color = color
			p.Material = mat or MET
			p.Transparency = tr or 0
			if mesh then
				local sm = Instance.new("SpecialMesh")
				sm.MeshType = mesh
				sm.Parent = p
			end
			p.Parent = m
			return p
		end
		-- брусок между двумя точками (ось Z вдоль отрезка)
		local function seg(name, a, b, w, h, color, mat, grow)
			local len = (b - a).Magnitude
			return part(name, BLOCK, Vector3.new(w, h, len + (grow or 0.04)), CFrame.lookAt((a + b) / 2, b), color, mat)
		end

		local hullC = Color3.fromRGB(150, 156, 162)
		local rimC = Color3.fromRGB(96, 100, 108)
		local darkC = Color3.fromRGB(52, 55, 60)
		local bronze = Color3.fromRGB(150, 118, 64)
		local bronzeD = Color3.fromRGB(104, 84, 50)
		local orange = Color3.fromRGB(255, 160, 45)
		local tan = Color3.fromRGB(190, 166, 128)
		local seatDark = Color3.fromRGB(70, 72, 76)
		local steel = Color3.fromRGB(104, 100, 94)
		local hoseC = Color3.fromRGB(205, 180, 92)
		local hoseD = Color3.fromRGB(158, 136, 66)

		-- корпус-тарелка (сплюснутый эллипсоид), ободок, нижняя плита, свечение снизу
		local hull = part("Hull", BLOCK, Vector3.new(16, 4.4, 16), CFrame.new(0, 0, 0), hullC, MET, 0, Enum.MeshType.Sphere)
		m.PrimaryPart = hull
		part("Rim", CYL, Vector3.new(0.4, 16.2, 16.2), CFrame.new(0, 0, 0) * V, rimC, MET)
		part("Under", CYL, Vector3.new(0.5, 7, 7), CFrame.new(0, -2.0, 0) * V, darkC, MET)
		local glow = part("UnderGlow", CYL, Vector3.new(0.12, 4.6, 4.6), CFrame.new(0, -2.28, 0) * V, Color3.fromRGB(120, 235, 255), NEON, 0.35)
		local gl = Instance.new("PointLight")
		gl.Color = Color3.fromRGB(120, 235, 255)
		gl.Range = 30
		gl.Brightness = 1.2
		gl.Parent = glow

		local function hullY(r) return 2.2 * math.sqrt(math.max(0, 1 - (r / 8) ^ 2)) end

		-- кабина: тёмный пол, высокий бронзовый обод на заклёпках, стеклянный купол
		local RING_R, DOME_Y = 4.6, 2.85
		part("Floor", CYL, Vector3.new(0.5, 8.8, 8.8), CFrame.new(0, 1.95, 0) * V, Color3.fromRGB(58, 50, 44), SP)
		do
			local NR = 32
			for i = 0, NR - 1 do
				local a = i * (math.pi * 2 / NR)
				local pos = Vector3.new(math.cos(a) * RING_R, 2.2, math.sin(a) * RING_R)
				local tg = Vector3.new(-math.sin(a), 0, math.cos(a))
				part("Ring", BLOCK, Vector3.new(0.4, 1.3, 2 * math.pi * RING_R / NR + 0.08), CFrame.lookAt(pos, pos + tg), bronzeD, MET)
			end
			for i = 0, 15 do
				local a = i * (math.pi * 2 / 16) + 0.1
				part("Rivet", BALL, Vector3.new(0.32, 0.32, 0.32), CFrame.new(math.cos(a) * 4.82, 2.35, math.sin(a) * 4.82), bronze, MET)
			end
		end
		part("Dome", BLOCK, Vector3.new(9.2, 8.2, 9.2), CFrame.new(0, DOME_Y, 0), Color3.fromRGB(196, 224, 234), GLASS, 0.65, Enum.MeshType.Sphere)
		-- арка-лента поверх купола (спереди назад)
		do
			local prev
			local N = 20
			for i = 0, N do
				local phi = math.pi * i / N
				local p = Vector3.new(0, DOME_Y + math.sin(phi) * 4.3, -math.cos(phi) * 4.72)
				if prev then seg("Arch", prev, p, 0.55, 0.2, bronze, MET, 0.08) end
				prev = p
			end
		end

		-- кресла (2 спереди, 2 сзади): сиденье, спинка с рёбрами, подлокотники, тёмный подголовник
		local function seat(x, z, name)
			local tilt = CFrame.Angles(math.rad(-8), 0, 0)
			part(name .. "Base", BLOCK, Vector3.new(1.6, 0.4, 1.7), CFrame.new(x, 2.4, z), tan, SP)
			part(name .. "Back", BLOCK, Vector3.new(1.5, 2.1, 0.45), CFrame.new(x, 3.55, z + 0.85) * tilt, tan, SP)
			part(name .. "Rib", BLOCK, Vector3.new(1.1, 1.5, 0.1), CFrame.new(x, 3.5, z + 0.58) * tilt, Color3.fromRGB(160, 138, 104), SP)
			part(name .. "Head", BLOCK, Vector3.new(1.0, 0.75, 0.4), CFrame.new(x, 4.95, z + 0.95) * tilt, seatDark, SP)
			part(name .. "ArmL", BLOCK, Vector3.new(0.18, 0.5, 1.3), CFrame.new(x - 0.85, 2.85, z), seatDark, SP)
			part(name .. "ArmR", BLOCK, Vector3.new(0.18, 0.5, 1.3), CFrame.new(x + 0.85, 2.85, z), seatDark, SP)
		end
		seat(-1.25, -0.8, "SeatA")
		seat(1.25, -0.8, "SeatB") -- место водителя (SEAT)
		seat(-1.25, 1.7, "SeatC")
		seat(1.25, 1.7, "SeatD")
		part("Dash", BLOCK, Vector3.new(4.2, 0.9, 0.9), CFrame.new(0, 2.65, -3.3), darkC, SP)
		local dtop = part("DashTop", BLOCK, Vector3.new(3.9, 0.3, 0.7), CFrame.new(0, 3.2, -3.2) * CFrame.Angles(math.rad(-12), 0, 0), Color3.fromRGB(40, 42, 46), SP)
		-- кнопка НОУКЛИП по центру панели (красная = выкл, бирюзовая = вкл)
		do
			local ncCF = dtop.CFrame * CFrame.new(0, 0.2, 0)
			part("NoclipBase", CYL, Vector3.new(0.12, 0.66, 0.66), ncCF * V, darkC, MET)
			part("NoclipBtn", CYL, Vector3.new(0.18, 0.46, 0.46), ncCF * CFrame.new(0, 0.08, 0) * V, Color3.fromRGB(255, 70, 80), NEON)
		end
		part("SteerWheel", CYL, Vector3.new(0.14, 1.3, 1.3), along(Vector3.new(1.25, 3.4, -2.2), Vector3.new(0, 0.5, 1)), darkC, SP)

		-- колёса
		for _, sx in ipairs({ -2.4, 2.4 }) do
			for _, sz in ipairs({ -3.3, 3.3 }) do
				part("Tire", CYL, Vector3.new(0.9, 1.9, 1.9), CFrame.new(sx, -2.2, sz), Color3.fromRGB(28, 28, 30), PLASTIC)
				part("Hub", CYL, Vector3.new(0.95, 0.9, 0.9), CFrame.new(sx, -2.2, sz), Color3.fromRGB(150, 150, 155), MET)
			end
		end

		-- оранжевые «лесенки» из светящихся пластин в тёмной рамке (6 лучей от обода кабины до края)
		for s = 0, 5 do
			local ang = math.rad(s * 60 + 30)
			local d = Vector3.new(math.sin(ang), 0, -math.cos(ang))
			local function at(r, lift) return d * r + Vector3.new(0, hullY(r) + lift, 0) end
			local r0, step = 5.0, 0.36
			for k = 0, 7 do
				seg("StripFrame", at(r0 + k * step, 0.05), at(r0 + (k + 1) * step, 0.05), 0.95, 0.1, darkC, MET, 0.02)
				seg("Strip", at(r0 + (k + 0.14) * step, 0.075), at(r0 + (k + 0.86) * step, 0.075), 0.65, 0.1, orange, NEON, 0)
			end
		end

		-- две ребристые «мусорные бочки» сзади и гофрированные шланги
		local function barrel(pos, dir, len, dia, name)
			local u = dir.Unit
			part(name, CYL, Vector3.new(len, dia, dia), along(pos, dir), steel, MET)
			for i = 1, 4 do
				part(name .. "Rib", CYL, Vector3.new(0.14, dia * 1.05, dia * 1.05), along(pos - u * (len / 2) + u * (len * i / 5), dir), Color3.fromRGB(86, 82, 76), MET)
			end
			part(name .. "Back", CYL, Vector3.new(0.3, dia * 1.08, dia * 1.08), along(pos - u * (len / 2 - 0.1), dir), Color3.fromRGB(80, 76, 72), MET)
			part(name .. "Lip", CYL, Vector3.new(0.3, dia * 1.12, dia * 1.12), along(pos + u * (len / 2 - 0.1), dir), Color3.fromRGB(128, 122, 112), MET)
			part(name .. "Open", CYL, Vector3.new(0.12, dia * 0.84, dia * 0.84), along(pos + u * (len / 2 + 0.02), dir), Color3.fromRGB(26, 24, 24), SP)
		end
		local function hose(p1, p2, sag, name)
			local c = (p1 + p2) / 2 + Vector3.new(0, -sag, 0)
			local prev
			local N = 10
			for i = 0, N do
				local t = i / N
				local p = p1 * ((1 - t) ^ 2) + c * (2 * (1 - t) * t) + p2 * (t * t)
				if prev then
					local dv = p - prev
					local mid = (p + prev) / 2
					part(name, CYL, Vector3.new(dv.Magnitude + 0.1, 0.72, 0.72), along(mid, dv), hoseC, PLASTIC)
					part(name .. "Rib", CYL, Vector3.new(0.16, 0.92, 0.92), along(mid, dv), hoseD, PLASTIC)
				end
				prev = p
			end
		end
		-- два двигателя-«бочки» сзади по бокам: лежат на корпусе под небольшим углом вверх,
		-- каждый опирается на стойку, шланги идут от обода кабины к передним торцам
		local dirR, dirL = Vector3.new(0.05, 0.29, 1), Vector3.new(-0.05, 0.29, 1)
		local posR, posL = Vector3.new(1.75, 2.4, 6.2), Vector3.new(-1.75, 2.4, 6.2)
		barrel(posR, dirR, 3.2, 2.4, "BarrelR")
		barrel(posL, dirL, 3.2, 2.4, "BarrelL")
		for _, sx in ipairs({ 1.75, -1.75 }) do
			part("Strut", BLOCK, Vector3.new(1.1, 1.7, 0.6), CFrame.new(sx, 1.25, 6.9), darkC, MET)
			part("StrutBand", BLOCK, Vector3.new(1.3, 0.2, 0.9), CFrame.new(sx, 2.05, 6.9), bronzeD, MET)
		end
		hose(Vector3.new(3.3, 1.9, 3.2), posR - dirR.Unit * 1.62 + Vector3.new(0, -0.2, 0), 0.5, "HoseR")
		hose(Vector3.new(-3.3, 1.9, 3.2), posL - dirL.Unit * 1.62 + Vector3.new(0, -0.2, 0), 0.5, "HoseL")

		-- две фары спереди по бокам от носа, светят строго вперёд
		local function lamp(pos, dir, name)
			local u = dir.Unit
			part(name .. "Box", BLOCK, Vector3.new(1.0, 0.9, 1.1), CFrame.lookAt(pos, pos + dir), Color3.fromRGB(176, 166, 138), SP)
			part(name .. "Stem", BLOCK, Vector3.new(0.3, 0.7, 0.3), CFrame.new(pos + Vector3.new(0, -0.55, 0)), darkC, SP)
			local lens = part(name .. "Lens", CYL, Vector3.new(0.25, 0.78, 0.78), along(pos + u * 0.62, dir), Color3.fromRGB(255, 240, 200), NEON, 0.1)
			local sl = Instance.new("SpotLight")
			sl.Face = Enum.NormalId.Right
			sl.Angle = 70
			sl.Range = 60
			sl.Brightness = 3
			sl.Color = Color3.fromRGB(255, 240, 210)
			sl.Parent = lens
		end
		lamp(Vector3.new(1.5, 1.6, -6.3), Vector3.new(0, -0.1, -1), "LampR")
		lamp(Vector3.new(-1.5, 1.6, -6.3), Vector3.new(0, -0.1, -1), "LampL")

		-- наклейки спереди справа между лучами (угол 0 = нос, + = вправо)
		local function sticker(angDeg, r, w, d, color, text, name)
			local ang = math.rad(angDeg)
			local dir = Vector3.new(math.sin(ang), 0, -math.cos(ang))
			local p = dir * r + Vector3.new(0, hullY(r) + 0.04, 0)
			local p2 = dir * (r + 0.3) + Vector3.new(0, hullY(r + 0.3) + 0.04, 0)
			local pt = part(name, BLOCK, Vector3.new(w, 0.05, d), CFrame.lookAt((p + p2) / 2, p), color, SP)
			if text then
				local sg = Instance.new("SurfaceGui")
				sg.Face = Enum.NormalId.Top
				sg.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
				sg.PixelsPerStud = 40
				sg.Parent = pt
				local tl = Instance.new("TextLabel")
				tl.BackgroundTransparency = 1
				tl.Size = UDim2.fromScale(1, 1)
				tl.Text = text
				tl.TextScaled = true
				tl.Font = Enum.Font.GothamBold
				tl.TextColor3 = Color3.fromRGB(20, 50, 60)
				tl.Parent = sg
			end
			return pt
		end
		sticker(47, 5.6, 2.0, 0.9, Color3.fromRGB(70, 205, 195), "I <3 SHLEEMPS", "StickerA")
		sticker(65, 5.6, 1.2, 0.6, Color3.fromRGB(228, 228, 234), "C-137", "StickerB")
		do
			local ang = math.rad(77)
			local dir = Vector3.new(math.sin(ang), 0, -math.cos(ang))
			local p = dir * 5.6 + Vector3.new(0, hullY(5.6) + 0.04, 0)
			part("StickerBall", CYL, Vector3.new(0.05, 0.9, 0.9), along(p, Vector3.new(dir.X * 0.5, 1, dir.Z * 0.5)), Color3.fromRGB(130, 210, 60), SP)
		end
		return m
	end

	------------------------------------------------------------------
	-- КНОПКИ НА ЭКРАНЕ
	------------------------------------------------------------------
	-- вторая колонка кнопок ЛЕВЕЕ основной и выше середины экрана: справа внизу у Roblox кнопка прыжка,
	-- она перекрывала «▲ ВВЕРХ» и съедала нажатия
	local COLX, COLY = -126, 0.4
	local shipBtn = button(root, "◈ СЕСТЬ", PAL.green, PAL.ink, {
		TextSize = 13, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, COLX, COLY, 0), Size = UDim2.fromOffset(104, 50), Visible = false,
	})
	stroke(shipBtn, Color3.fromRGB(20, 120, 70), 1.5)
	local upBtn = button(root, "▲ ВВЕРХ", PAL.cyan, PAL.ink, {
		TextSize = 13, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, COLX, COLY, -58), Size = UDim2.fromOffset(104, 50), Visible = false,
	})
	local downBtn = button(root, "▼ ВНИЗ", PAL.cyan, PAL.ink, {
		TextSize = 13, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, COLX, COLY, 58), Size = UDim2.fromOffset(104, 50), Visible = false,
	})
	-- удержание по КАЖДОМУ пальцу отдельно (раньше отпускание стика сбрасывало «вверх»)
	local function holdBind(btn, setter)
		local act = {}
		local function key(input)
			return input.UserInputType == Enum.UserInputType.Touch and input or input.UserInputType
		end
		btn.InputBegan:Connect(function(input)
			if isPress(input) then
				act[key(input)] = true
				setter(true)
			end
		end)
		UIS.InputEnded:Connect(function(input)
			local k = key(input)
			if act[k] then
				act[k] = nil
				if next(act) == nil then setter(false) end
			end
		end)
	end
	holdBind(upBtn, function(v) upHeld = v end)
	holdBind(downBtn, function(v) downHeld = v end)

	local function refreshUI()
		local st = ship and ship.state
		local riding = st == "riding"
		shipBtn.Visible = (st == "parked") or riding
		shipBtn.Text = riding and "◈ ВЫЙТИ" or "◈ СЕСТЬ"
		shipBtn.BackgroundColor3 = riding and PAL.yellow or PAL.green
		upBtn.Visible = riding
		downBtn.Visible = riding
		if not riding then upHeld, downHeld = false, false end
	end

	------------------------------------------------------------------
	-- НОУКЛИП: обычная кнопка в той же колонке справа (раньше ездила за 3D-кнопкой на приборной панели
	-- и уходила за экран, когда не смотришь вниз). Клавиша N — то же самое
	------------------------------------------------------------------
	local ncBtn = button(root, "NOCLIP\nВЫКЛ", PAL.red, PAL.white, {
		TextSize = 12, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, COLX, COLY, 116), Size = UDim2.fromOffset(104, 50), Visible = false,
	})
	stroke(ncBtn, Color3.new(1, 1, 1), 1.5)

	local function setNoclip(on, silent)
		if not ship then return end
		ship.noclip = on and true or false
		local b3 = ship.model and ship.model:FindFirstChild("NoclipBtn")
		if b3 then b3.Color = ship.noclip and Color3.fromRGB(70, 255, 200) or Color3.fromRGB(255, 70, 80) end
		ncBtn.Text = ship.noclip and "NOCLIP\nВКЛ" or "NOCLIP\nВЫКЛ"
		ncBtn.BackgroundColor3 = ship.noclip and PAL.green or PAL.red
		ncBtn.TextColor3 = ship.noclip and PAL.ink or PAL.white
		if not silent then
			toast(ship.noclip and "НОУКЛИП ВКЛ — корабль летит сквозь всё" or "НОУКЛИП ВЫКЛ", 2.2)
		end
	end

	ncBtn.Activated:Connect(function()
		if ship and ship.state == "riding" then setNoclip(not ship.noclip) end
	end)
	UIS.InputBegan:Connect(function(input, gp)
		if gp or UIS:GetFocusedTextBox() then return end
		if input.KeyCode == Enum.KeyCode.N and ship and ship.state == "riding" then
			setNoclip(not ship.noclip)
		end
	end)

	local function ncStep()
		local riding = ship and ship.state == "riding" and ship.model and ship.model.Parent
		ncBtn.Visible = riding and true or false
	end
	pcall(function() RunService:UnbindFromRenderStep("PortalGunShipUI") end)
	RunService:BindToRenderStep("PortalGunShipUI", Enum.RenderPriority.Camera.Value + 2, ncStep)

	------------------------------------------------------------------
	-- УПРАВЛЕНИЕ
	------------------------------------------------------------------
	local function getMove()
		local _, _, hum = getChar()
		local md = hum and hum.MoveDirection or Vector3.zero
		local h = Vector3.new(md.X, 0, md.Z)
		if h.Magnitude > 0.05 then return h end
		-- запасной вариант: клавиши
		local cam = workspace.CurrentCamera
		local lv, rv = cam.CFrame.LookVector, cam.CFrame.RightVector
		local look, right = Vector3.new(lv.X, 0, lv.Z), Vector3.new(rv.X, 0, rv.Z)
		if look.Magnitude < 0.01 or right.Magnitude < 0.01 then return Vector3.zero end
		look, right = look.Unit, right.Unit
		local v = Vector3.zero
		if UIS:IsKeyDown(Enum.KeyCode.W) or UIS:IsKeyDown(Enum.KeyCode.Up) then v += look end
		if UIS:IsKeyDown(Enum.KeyCode.S) or UIS:IsKeyDown(Enum.KeyCode.Down) then v -= look end
		if UIS:IsKeyDown(Enum.KeyCode.D) or UIS:IsKeyDown(Enum.KeyCode.Right) then v += right end
		if UIS:IsKeyDown(Enum.KeyCode.A) or UIS:IsKeyDown(Enum.KeyCode.Left) then v -= right end
		if v.Magnitude > 1 then v = v.Unit end
		return v
	end

	-- игрока нет (умер / респаун): корабль просто остаётся на месте
	local function releaseRide()
		if ship and ship.state == "riding" then
			setNoclip(false, true)
			ship.state = "parked"
			ship.frozen = false
			ship.t = 0
			local g = workspace:Raycast(ship.cf.Position, Vector3.new(0, -600, 0), rayParams(nil))
			ship.groundY = g and g.Position.Y or (ship.cf.Position.Y - REST_H)
			refreshUI()
		end
	end

	local function board()
		if not ship or ship.state ~= "parked" then toast("Сначала вызови корабль (меню ▸ КОРАБЛЬ)") return end
		local char, hrp, hum = getChar()
		if not hrp then return end
		closeMenu()
		ship.state = "riding"
		ship.frozen = false
		ship.vel = Vector3.zero
		hrp.Anchored = true
		pcall(function() hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, false) end)
		hum.Sit = true
		char:PivotTo(ship.cf * CFrame.new(SEAT))
		refreshUI()
		toast("Лети: стик / WASD — движение, пробел или ▲ — вверх, Shift или ▼ — вниз", 5)
	end

	local function exitShip()
		if not ship or ship.state ~= "riding" then return false end
		local char, hrp, hum = getChar()
		if not hrp then releaseRide() return true end
		local params = rayParams(char)
		local pos = ship.cf.Position
		local under = workspace:Raycast(pos, Vector3.new(0, -600, 0), params)
		local rv = ship.cf.RightVector
		local right = Vector3.new(rv.X, 0, rv.Z)
		right = right.Magnitude > 0.1 and right.Unit or Vector3.xAxis
		local spot
		for _, off in ipairs({ 11, -11, 0 }) do
			local p = pos + right * off
			local g = workspace:Raycast(Vector3.new(p.X, pos.Y + 3, p.Z), Vector3.new(0, -600, 0), params)
			if g then spot = g.Position break end
		end
		if not spot and ship.noclip then
			-- корабль внутри холма/здания: выныриваем на поверхность сверху
			local gtop = workspace:Raycast(Vector3.new(pos.X, pos.Y + 400, pos.Z), Vector3.new(0, -1200, 0), params)
			if gtop then spot = gtop.Position end
		end
		if not spot then toast("Под кораблём нет земли — выйти нельзя") return false end
		setNoclip(false, true)
		ship.groundY = under and under.Position.Y or spot.Y
		local p0 = spot + Vector3.new(0, hh + 0.3, 0)
		local look = Vector3.new(pos.X, p0.Y, pos.Z)
		hrp.Anchored = false
		if (look - p0).Magnitude > 0.5 then
			char:PivotTo(CFrame.lookAt(p0, look))
		else
			char:PivotTo(CFrame.new(p0))
		end
		hrp.AssemblyLinearVelocity = Vector3.zero
		hum.Sit = false
		pcall(function() hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, true) end)
		ship.state = "parked"
		ship.t = 0
		refreshUI()
		return true
	end

	local function shipStep(dt)
		if not ship or not ship.model or not ship.model.Parent then return end
		if ship.state == "parked" then
			ship.t += dt
			ship.lean = ship.lean + (0 - ship.lean) * math.min(1, dt * 4)
			local pos = ship.cf.Position
			local ty = ship.groundY + REST_H + math.sin(ship.t * 1.5) * 0.22
			local ny = pos.Y + (ty - pos.Y) * math.min(1, dt * 3)
			ship.cf = CFrame.new(pos.X, ny, pos.Z) * CFrame.Angles(0, ship.yaw, 0) * CFrame.Angles(-ship.lean, 0, 0)
			ship.model:PivotTo(ship.cf)
		elseif ship.state == "riding" then
			local char, hrp, hum = getChar()
			if not hrp then releaseRide() return end
			if ship.frozen then
				hrp.Anchored = true
				char:PivotTo(ship.cf * CFrame.new(SEAT))
				return
			end
			local mv = getMove()
			local vert = 0
			if UIS:IsKeyDown(Enum.KeyCode.Space) or upHeld then vert += 1 end
			if UIS:IsKeyDown(Enum.KeyCode.LeftShift) or UIS:IsKeyDown(Enum.KeyCode.C) or downHeld then vert -= 1 end
			local spd = S("shipspeed")
			local want = mv * spd + Vector3.new(0, vert * spd * 0.7, 0)
			ship.vel = ship.vel:Lerp(want, 1 - math.exp(-3.5 * dt))
			local params = rayParams(char)
			local pos = ship.cf.Position

			-- стена по ходу движения: не даём влететь
			local hv = Vector3.new(ship.vel.X, 0, ship.vel.Z)
			if hv.Magnitude > 1 and not ship.noclip then
				local hit = workspace:Raycast(pos, hv.Unit * (hv.Magnitude * dt + 9), params)
				if hit and math.abs(hit.Normal.Y) < 0.7 then
					local n = Vector3.new(hit.Normal.X, 0, hit.Normal.Z)
					if n.Magnitude > 0.01 then
						n = n.Unit
						ship.vel = ship.vel - n * math.min(0, ship.vel:Dot(n))
					end
				end
			end
			local step = ship.vel * dt
			-- потолок
			if step.Y > 0.001 and not ship.noclip then
				local roof = workspace:Raycast(pos, Vector3.new(0, step.Y + 4, 0), params)
				if roof then
					step = Vector3.new(step.X, 0, step.Z)
					ship.vel = Vector3.new(ship.vel.X, 0, ship.vel.Z)
				end
			end
			local np = pos + step
			-- земля: ниже колёс не опускаемся
			local g = nil
			if not ship.noclip then
				g = workspace:Raycast(Vector3.new(np.X, math.max(np.Y, pos.Y) + 1, np.Z), Vector3.new(0, -500, 0), params)
			end
			if g and np.Y < g.Position.Y + 3.4 then
				np = Vector3.new(np.X, g.Position.Y + 3.4, np.Z)
				if ship.vel.Y < 0 then ship.vel = Vector3.new(ship.vel.X, 0, ship.vel.Z) end
			end

			-- не даём провалиться ниже «убивающей» высоты (в ноуклипе иначе игрок умрёт)
			local voidY = workspace.FallenPartsDestroyHeight + 80
			if np.Y < voidY then
				np = Vector3.new(np.X, voidY, np.Z)
				if ship.vel.Y < 0 then ship.vel = Vector3.new(ship.vel.X, 0, ship.vel.Z) end
			end

			-- поворот носом по ходу и наклон вперёд
			local hvm = Vector3.new(ship.vel.X, 0, ship.vel.Z)
			if hvm.Magnitude > 5 then
				local target = math.atan2(-hvm.X, -hvm.Z)
				local d = (target - ship.yaw + math.pi) % (2 * math.pi) - math.pi
				ship.yaw += d * math.min(1, dt * 3)
			end
			local lean = math.clamp(hvm.Magnitude / math.max(spd, 1), 0, 1) * 0.3
			ship.lean = ship.lean + (lean - ship.lean) * math.min(1, dt * 5)
			ship.cf = CFrame.new(np) * CFrame.Angles(0, ship.yaw, 0) * CFrame.Angles(-ship.lean, 0, 0)
			ship.model:PivotTo(ship.cf)

			-- игрок сидит в кресле
			hrp.Anchored = true
			hum.Sit = true
			char:PivotTo(ship.cf * CFrame.new(SEAT))
		end
	end

	------------------------------------------------------------------
	-- ВЫЗОВ / УБРАТЬ
	------------------------------------------------------------------
	local function summon()
		local char, hrp = getChar()
		if not hrp then return end
		if ship then
			if ship.state == "arriving" or ship.state == "leaving" then
				toast("Корабль ещё в пути — подожди")
			else
				toast("Корабль уже здесь — нажми «СЕСТЬ»")
			end
			return
		end
		closeMenu()
		local lv = hrp.CFrame.LookVector
		local flat = Vector3.new(lv.X, 0, lv.Z)
		flat = flat.Magnitude > 0.1 and flat.Unit or Vector3.new(0, 0, -1)
		local spot = hrp.Position + flat * 24
		local gr = workspace:Raycast(Vector3.new(spot.X, hrp.Position.Y + 6, spot.Z), Vector3.new(0, -300, 0), rayParams(char))
		local gy = gr and gr.Position.Y or (hrp.Position.Y - hh)
		local portalY = gy + S("shiph")
		local yawEnd = math.atan2(flat.X, flat.Z) -- нос корабля смотрит на игрока
		ship = { state = "arriving", vel = Vector3.zero, yaw = yawEnd, lean = 0, t = 0, groundY = gy }
		toast("Смотри вверх!", 3)
		task.spawn(function()
			local ok, err = pcall(function()
				local P = spawnPortal(Vector3.new(spot.X, portalY, spot.Z), Vector3.new(0, -1, 0), SKY_D, SKY_D, {
					up = Vector3.new(0, 0, 1), sc = 3, openT = 1.2, untracked = true,
				})
				task.wait(1.5)
				local model = buildShip()
				model.Parent = fx
				ship.model = model
				local startY, endY = portalY + 9, gy + REST_H
				local T, t0 = 5.5, os.clock()
				local closed = false
				while true do
					local a = (os.clock() - t0) / T
					if a >= 1 then break end
					local e = a * a * (3 - 2 * a)
					local y = startY + (endY - startY) * e
					ship.cf = CFrame.new(spot.X, y, spot.Z) * CFrame.Angles(0, yawEnd + (1 - e) * math.rad(280), 0) * CFrame.Angles(0, 0, math.sin(a * 8) * 0.1 * (1 - a))
					model:PivotTo(ship.cf)
					if not closed and y < portalY - 7 then
						closed = true
						closePortal(P)
					end
					RunService.RenderStepped:Wait()
				end
				if not closed then closePortal(P) end
				ship.cf = CFrame.new(spot.X, endY, spot.Z) * CFrame.Angles(0, yawEnd, 0)
				model:PivotTo(ship.cf)
				ship.state = "parked"
				ship.t = 0
				refreshUI()
				toast("Корабль прилетел. Нажми «СЕСТЬ» справа", 4)
			end)
			if not ok then
				warn("[PortalGun] корабль: " .. tostring(err))
				if ship and ship.model then pcall(function() ship.model:Destroy() end) end
				ship = nil
				refreshUI()
			end
		end)
	end

	local function dismiss()
		if not ship then toast("Корабль не вызван") return end
		if ship.state == "arriving" or ship.state == "leaving" then toast("Корабль в пути — подожди") return end
		if ship.state == "riding" then
			if not exitShip() then return end
		end
		ship.state = "leaving"
		refreshUI()
		task.spawn(function()
			local ok, err = pcall(function()
				local model = ship.model
				local pos = ship.cf.Position
				local rot = ship.cf.Rotation
				local portalY = pos.Y + 60
				local P = spawnPortal(Vector3.new(pos.X, portalY, pos.Z), Vector3.new(0, -1, 0), SKY_D, SKY_D, {
					up = Vector3.new(0, 0, 1), sc = 3, openT = 1.2, untracked = true,
				})
				task.wait(1.4)
				local T, t0 = 3.6, os.clock()
				while true do
					local a = (os.clock() - t0) / T
					if a >= 1 then break end
					local y = pos.Y + (portalY + 9 - pos.Y) * (a * a)
					ship.cf = CFrame.new(pos.X, y, pos.Z) * rot * CFrame.Angles(0, a * math.rad(220), 0)
					model:PivotTo(ship.cf)
					RunService.RenderStepped:Wait()
				end
				model:Destroy()
				closePortal(P)
			end)
			if not ok then
				warn("[PortalGun] корабль: " .. tostring(err))
				if ship and ship.model then pcall(function() ship.model:Destroy() end) end
			end
			ship = nil
			refreshUI()
		end)
	end

	------------------------------------------------------------------
	-- БОЛЬШОЙ ПОРТАЛ ДЛЯ КОРАБЛЯ: влететь и телепортироваться вместе с кораблём
	------------------------------------------------------------------
	local function shipForward()
		local f = ship and ship.cf.LookVector or Vector3.new(0, 0, -1)
		f = Vector3.new(f.X, 0, f.Z)
		return f.Magnitude > 0.1 and f.Unit or Vector3.new(0, 0, -1)
	end
	-- портал 40 студов прямо по курсу корабля (если впереди стена — ближе)
	local function bigPlacement(params)
		local pos = ship.cf.Position
		local fwd = shipForward()
		local dist = 36
		if not ship.noclip then
			local hit = workspace:Raycast(pos, fwd * (dist + 8), params)
			if hit then dist = math.max(16, hit.Distance - 8) end
		end
		return {
			pos = pos + fwd * dist + Vector3.new(0, 4, 0), normal = -fwd, w = 40, h = 40,
			opts = { sc = 2, openT = 0.8 }, depth = 7,
		}
	end
	-- корабль плавно летит в центр портала и уменьшается
	local function flyInto(center, dur)
		if not (ship and ship.state == "riding" and ship.model and ship.model.Parent) then return end
		ship.frozen = true
		local start, rot = ship.cf.Position, ship.cf.Rotation
		local t0 = os.clock()
		while true do
			local a = (os.clock() - t0) / dur
			if a >= 1 or not ship or not ship.model or not ship.model.Parent then break end
			local e = a * a * (3 - 2 * a)
			ship.cf = CFrame.new(start:Lerp(center, e)) * rot
			ship.model:PivotTo(ship.cf)
			pcall(function() ship.model:ScaleTo(math.max(0.08, 1 - 0.9 * e)) end)
			RunService.RenderStepped:Wait()
		end
	end
	-- корабль (и ты в нём) появляется в точке назначения
	local function shipTp(dest)
		if not (ship and ship.model and ship.model.Parent) then return end
		local d = dest
		local sm = portals.SMITH
		if sm and (dest - sm.origin).Magnitude < 300 then d = sm.yard end -- рядом с домом садимся на дорогу
		local gr = workspace:Raycast(d + Vector3.new(0, 6, 0), Vector3.new(0, -800, 0), rayParams(nil))
		local base = gr and gr.Position.Y or d.Y
		ship.cf = CFrame.new(d.X, base + 14, d.Z) * CFrame.Angles(0, ship.yaw, 0)
		ship.vel = Vector3.zero
		ship.lean = 0
		pcall(function() ship.model:ScaleTo(1) end)
		ship.model:PivotTo(ship.cf)
		local char, hrp = getChar()
		if hrp then
			hrp.Anchored = true
			char:PivotTo(ship.cf * CFrame.new(SEAT))
		end
		ship.frozen = false
	end

	shipBtn.Activated:Connect(function()
		if ship and ship.state == "riding" then exitShip() else board() end
	end)
	pcall(function() RunService:UnbindFromRenderStep("PortalGunShip") end)
	RunService:BindToRenderStep("PortalGunShip", Enum.RenderPriority.Camera.Value - 1, shipStep)

	return {
		summon = summon,
		dismiss = dismiss,
		board = board,
		exit = exitShip,
		release = releaseRide,
		isRiding = function() return ship ~= nil and ship.state == "riding" end,
		bigPlacement = bigPlacement,
		flyInto = flyInto,
		tp = shipTp,
		pos = function() return ship.cf.Position end,
		forward = shipForward,
		unfreeze = function() if ship then ship.frozen = false pcall(function() ship.model:ScaleTo(1) end) end end,
	}
end)
if not ShipOk then
	warn("[PortalGun] модуль корабля не запустился: " .. tostring(Ship))
	local function noShip() if toast then toast("Корабль недоступен (ошибка запуска, см. Output)") end end
	Ship = { summon = noShip, dismiss = noShip, board = noShip, exit = noShip, release = function() end, isRiding = function() return false end }
end
portals.ShipApi = Ship

----------------------------------------------------------------------
-- ПУШКА (Tool, создаётся локально)
----------------------------------------------------------------------
-- иконки для СТАНДАРТНОГО хотбара Roblox: загрузи картинку в Roblox (Creator Hub → Decal/Image)
-- и впиши сюда ID, например gun = "rbxassetid://123456789". Пока пусто — стандартный хотбар покажет название.
local ICONS = { gun = "", flask = "" }

-- СВОЯ ПУШКА: код пользователя выполняется через loadstring (нужен executor), детали собираются в Model
ICONS.cgCache = nil
ICONS.cgCfg = function()
	return { x = S("cgx"), y = S("cgy"), z = S("cgz"), rx = S("cgrx"), ry = S("cgry"), rz = S("cgrz"), size = S("cgsize") }
end
ICONS.runModel = function(code, force)
	local c = ICONS.cgCache
	if not force and c and c.code == code and c.model then return c.model, c.info end
	if type(code) ~= "string" or code:match("^%s*$") then return nil, "код пустой" end
	local ls = loadstring
	if type(ls) ~= "function" then
		local okg, g = pcall(function() return getgenv and getgenv().loadstring end)
		if okg then ls = g end
	end
	if type(ls) ~= "function" then return nil, "loadstring недоступен: нужен executor" end
	local okL, f, perr = pcall(ls, "local ROOT = ...\n" .. code, "CustomGun")
	if not okL then return nil, "loadstring недоступен: нужен executor" end
	if not f then return nil, "ошибка в коде: " .. tostring(perr) end
	local srcM = Instance.new("Model")
	srcM.Name = "CustomGunSrc"
	local before = {}
	for _, ch in ipairs(workspace:GetChildren()) do before[ch] = true end
	local okR, ret = pcall(f, srcM)
	local function grab(o)
		if typeof(o) ~= "Instance" or o == srcM then return end
		if o:IsA("Tool") then
			for _, ch in ipairs(o:GetChildren()) do ch.Parent = srcM end
			o:Destroy()
		elseif o:IsA("Model") or o:IsA("BasePart") or o:IsA("Folder") then
			o.Parent = srcM
		end
	end
	if okR then grab(ret) end
	-- если код положил детали прямо в workspace — забираем их
	for _, ch in ipairs(workspace:GetChildren()) do
		if not before[ch] and ch ~= srcM then grab(ch) end
	end
	if not okR then
		srcM:Destroy()
		return nil, "ошибка при запуске: " .. tostring(ret)
	end
	local n = 0
	for _, d in ipairs(srcM:GetDescendants()) do
		if d:IsA("BaseScript") or d:IsA("JointInstance") or d:IsA("WeldConstraint") or d:IsA("Constraint") then
			d:Destroy()
		elseif d:IsA("BasePart") then
			n += 1
			d.Anchored = true
			d.CanCollide = false
			d.CanQuery = false
			d.CanTouch = false
			d.Massless = true
		end
	end
	if n == 0 then
		srcM:Destroy()
		return nil, "в коде нет деталей (Part / MeshPart)"
	end
	if n > 2500 then
		srcM:Destroy()
		return nil, "слишком много деталей (" .. n .. "), максимум 2500"
	end
	local cf, size = srcM:GetBoundingBox()
	local mx = math.max(size.X, size.Y, size.Z)
	local info = { cf = cf, size = size, fit = (mx > 0.001) and (3 / mx) or 1, n = n }
	if c and c.model then c.model:Destroy() end
	ICONS.cgCache = { code = code, model = srcM, info = info }
	return srcM, info
end
-- копия модели в «пространстве пушки»: рука (хват) в точке 0,0,0, нос пушки смотрит в −Z
ICONS.customPlace = function(model, info, cfg)
	local m = model:Clone()
	local k = info.fit * (cfg.size / 100)
	local off = CFrame.new(cfg.x / 10, cfg.y / 10, cfg.z / 10) * CFrame.Angles(math.rad(cfg.rx), math.rad(cfg.ry), math.rad(cfg.rz))
	for _, d in ipairs(m:GetDescendants()) do
		if d:IsA("BasePart") then
			local rel = info.cf:ToObjectSpace(d.CFrame)
			rel = (rel - rel.Position) + rel.Position * k
			d.Size = d.Size * k
			d.CFrame = off * rel
		end
	end
	return m, off, k
end
ICONS.customTool = function(model, info, cfg)
	local t = Instance.new("Tool")
	t.Name = "Портальная пушка"
	t.ToolTip = "Своя пушка"
	t.CanBeDropped = false
	t.RequiresHandle = true
	t.GripPos = Vector3.new(0, 0, 0)
	local handle = Instance.new("Part")
	handle.Name = "Handle"
	handle.Size = Vector3.new(0.4, 0.4, 0.4)
	handle.Transparency = 1
	handle.CanCollide = false
	handle.CanQuery = false
	handle.CanTouch = false
	handle.Massless = true
	handle.Parent = t
	local m, off, k = ICONS.customPlace(model, info, cfg)
	local list = {}
	for _, d in ipairs(m:GetDescendants()) do
		if d:IsA("BasePart") then list[#list + 1] = d end
	end
	for _, p in ipairs(list) do
		local cf = p.CFrame
		p.Anchored = false
		p.CanCollide = false
		p.CanQuery = false
		p.CanTouch = false
		p.Massless = true
		local w = Instance.new("Weld")
		w.Part0 = handle
		w.Part1 = p
		w.C0 = cf
		w.Parent = p
		p.Parent = t
	end
	-- дуло (откуда вылетает луч): передняя точка модели
	local tip = Instance.new("Part")
	tip.Name = "Tip"
	tip.Size = Vector3.new(0.2, 0.2, 0.2)
	tip.Transparency = 1
	tip.CanCollide = false
	tip.CanQuery = false
	tip.CanTouch = false
	tip.Massless = true
	local tw = Instance.new("Weld")
	tw.Part0 = handle
	tw.Part1 = tip
	tw.C0 = off * CFrame.new(0, 0, -info.size.Z * k / 2)
	tw.Parent = tip
	tip.Parent = t
	m:Destroy()
	return t, {}
end

do -- новые скины пушки
	local B = {}
	portals.SkinBuild = B
	local V3, CF = Vector3.new, CFrame.new
	local SP, MET, GLASS, NEON = Enum.Material.SmoothPlastic, Enum.Material.Metal, Enum.Material.Glass, Enum.Material.Neon
	local BLOCK, CYL, BALL = Enum.PartType.Block, Enum.PartType.Cylinder, Enum.PartType.Ball
	local up = CFrame.Angles(0, 0, math.pi / 2)
	local fwdC = CFrame.Angles(0, math.pi / 2, 0)
	local function C(r, g, b) return Color3.fromRGB(r, g, b) end
	local function base(tip, hsize, hcolor, hmat, grip)
		local t = Instance.new("Tool")
		t.Name = "Портальная пушка"
		t.ToolTip = tip
		t.CanBeDropped = false
		t.RequiresHandle = true
		t.GripPos = grip
		local h = Instance.new("Part")
		h.Name = "Handle"
		h.Size = hsize
		h.Color = hcolor
		h.Material = hmat
		h.CanCollide = false
		h.Massless = true
		h.Parent = t
		local function add(name, shape, size, offset, color, mat, tr)
			local p = Instance.new("Part")
			p.Name = name
			p.Shape = shape
			p.Size = size
			p.Color = color
			p.Material = mat or SP
			p.Transparency = tr or 0
			p.CanCollide = false
			p.CanQuery = false
			p.CanTouch = false
			p.Massless = true
			local w = Instance.new("Weld")
			w.Part0 = h
			w.Part1 = p
			w.C0 = offset
			w.Parent = p
			p.Parent = t
			return p, w
		end
		return t, add
	end
	local function glow(parent, color, range, br)
		local l = Instance.new("PointLight")
		l.Color = color
		l.Range = range
		l.Brightness = br
		l.Parent = parent
	end

	-- РИК, улучшенная: три зелёные лампы, вихрь в колбе, неоновые полосы
	B.rickplus = function()
		local t, add = base("Улучшенная портальная пушка Рика", V3(1.0, 0.8, 2.7), C(214, 218, 223), SP, V3(0, -1.15, 1.05))
		local white, body, grey, dgrey = C(246, 248, 250), C(214, 218, 223), C(176, 182, 190), C(112, 118, 126)
		local dark, black, cream = C(34, 36, 42), C(18, 18, 20), C(236, 224, 192)
		local green, glassC, cyan, silver = C(80, 255, 110), C(90, 235, 90), C(70, 235, 255), C(205, 210, 218)
		add("FrontBlock", BLOCK, V3(1.1, 0.95, 1.25), CF(0, 0.05, -0.8), body, SP)
		add("TopFront", BLOCK, V3(1.0, 0.06, 1.15), CF(0, 0.555, -0.8), white, SP)
		add("TopRear", BLOCK, V3(0.9, 0.06, 1.5), CF(0, 0.43, 0.65), white, SP)
		add("StripeR", BLOCK, V3(0.03, 0.1, 2.3), CF(0.505, -0.15, 0), cyan, NEON, 0.1)
		add("StripeL", BLOCK, V3(0.03, 0.1, 2.3), CF(-0.505, -0.15, 0), cyan, NEON, 0.1)
		add("BackCap", BLOCK, V3(1.02, 0.82, 0.12), CF(0, 0, 1.36), dgrey, SP)
		add("FacePlate", BLOCK, V3(1.0, 0.7, 0.1), CF(0, 0.05, -1.45), dark, SP)
		for i = -1, 1 do
			add("LampRim" .. i, CYL, V3(0.06, 0.4, 0.4), CF(i * 0.31, 0.05, -1.505) * fwdC, silver, MET)
			add("Lamp" .. i, CYL, V3(0.08, 0.3, 0.3), CF(i * 0.31, 0.05, -1.53) * fwdC, green, NEON, 0.05)
		end
		local tip = add("Tip", BALL, V3(0.2, 0.2, 0.2), CF(0, 0.05, -1.75), green, NEON, 1)
		glow(tip, green, 9, 1.4)
		local dc = CF(0, 0.585, -0.8)
		add("DomeRing", CYL, V3(0.08, 1.0, 1.0), dc * CF(0, 0.04, 0) * up, dark, SP)
		add("DomeGlow", CYL, V3(0.05, 0.92, 0.92), dc * CF(0, 0.085, 0) * up, cyan, NEON, 0.15)
		add("DomeBase", CYL, V3(0.2, 0.82, 0.82), dc * CF(0, 0.2, 0) * up, silver, MET)
		add("Dome", CYL, V3(1.0, 0.72, 0.72), dc * CF(0, 0.8, 0) * up, glassC, GLASS, 0.35)
		add("DomeTop", BALL, V3(0.72, 0.72, 0.72), dc * CF(0, 1.3, 0), glassC, GLASS, 0.35)
		local core = add("SwirlCore", BALL, V3(0.3, 0.3, 0.3), dc * CF(0, 0.9, 0), C(215, 255, 215), NEON, 0.1)
		glow(core, green, 12, 2)
		local anim = {}
		local function swirl(name, y, dia, tilt, spd, color)
			local _, w = add(name, CYL, V3(0.04, dia, dia), dc * CF(0, y, 0) * tilt * up, color or green, NEON, 0.25)
			anim[#anim + 1] = { w = w, pre = dc, post = dc:Inverse() * w.C0, spd = spd }
		end
		swirl("Swirl1", 0.6, 0.5, CFrame.Angles(0.5, 0, 0), 2.4)
		swirl("Swirl2", 0.9, 0.46, CFrame.Angles(-0.5, 0.6, 0), -3.1, C(215, 255, 215))
		swirl("Swirl3", 1.2, 0.34, CFrame.Angles(0.4, 1.2, 0), 4.0)
		swirl("Swirl4", 1.0, 0.56, CFrame.Angles(0.2, 2.0, 0.3), -1.7, cyan)
		local dispTilt = CFrame.Angles(math.rad(-6), 0, 0)
		add("DisplayFrame", BLOCK, V3(0.62, 0.05, 0.46), CF(0, 0.475, 0.2) * dispTilt, dark, SP)
		add("Display", BLOCK, V3(0.5, 0.04, 0.34), CF(0, 0.5, 0.2) * dispTilt, C(235, 35, 45), NEON, 0.05)
		for _, sx in ipairs({ 1, -1 }) do
			local s = sx > 0 and "R" or "L"
			add("KnobRim" .. s, CYL, V3(0.06, 0.78, 0.78), CF(sx * 0.53, -0.02, 0.55), silver, MET)
			add("Knob" .. s, CYL, V3(0.2, 0.64, 0.64), CF(sx * 0.62, -0.02, 0.55), black, SP)
			add("KnobMark" .. s, BLOCK, V3(0.03, 0.34, 0.07), CF(sx * 0.73, -0.02, 0.55), grey, SP)
		end
		local gripRot = CFrame.Angles(math.rad(-22), 0, 0)
		add("Grip", BLOCK, V3(0.6, 1.8, 0.75), CF(0, -1.15, 1.05) * gripRot, body, SP)
		add("GripSide", BLOCK, V3(0.64, 1.3, 0.2), CF(0, -1.1, 1.38) * gripRot, grey, SP)
		add("GripEnd", BLOCK, V3(0.68, 0.34, 0.85), CF(0, -2.12, 1.44) * gripRot, cream, SP)
		add("GripToe", BALL, V3(0.7, 0.5, 0.7), CF(0, -2.3, 1.5) * gripRot, cream, SP)
		add("Trigger", BLOCK, V3(0.12, 0.36, 0.14), CF(0, -0.58, 0.42) * CFrame.Angles(math.rad(-10), 0, 0), dark, SP)
		return t, anim
	end

	-- РИК ПРАЙМ: белый корпус, шесть зелёных ламп (3 × 2), сплошная зелёная колба, красный тумблер
	B.rickprime = function()
		local t, add = base("Портальная пушка Рика Прайма", V3(1.05, 0.9, 2.7), C(238, 240, 243), SP, V3(0, -1.15, 1.05))
		local white, lgrey, dark = C(244, 246, 248), C(222, 226, 230), C(30, 32, 36)
		local green, red, silver = C(60, 255, 60), C(230, 30, 30), C(205, 210, 218)
		add("FrontBlock", BLOCK, V3(1.2, 1.1, 1.3), CF(0, 0.05, -0.8), white, SP)
		add("TopBand", BLOCK, V3(1.0, 0.08, 1.9), CF(0, 0.5, 0.35), lgrey, SP)
		add("BackCap", BLOCK, V3(1.07, 0.92, 0.12), CF(0, 0, 1.36), lgrey, SP)
		add("FacePlate", BLOCK, V3(1.14, 1.0, 0.1), CF(0, 0.05, -1.5), dark, SP)
		local n = 0
		for ix = -1, 1 do
			for iy = 0, 1 do
				n = n + 1
				local x, y = ix * 0.34, 0.05 + (iy == 0 and 0.2 or -0.2)
				add("LampRim" .. n, CYL, V3(0.05, 0.34, 0.34), CF(x, y, -1.555) * fwdC, silver, MET)
				add("Lamp" .. n, CYL, V3(0.07, 0.26, 0.26), CF(x, y, -1.58) * fwdC, green, NEON, 0)
			end
		end
		local tip = add("Tip", BALL, V3(0.2, 0.2, 0.2), CF(0, 0.05, -1.8), green, NEON, 1)
		glow(tip, green, 9, 1.4)
		local dc = CF(0, 0.6, -0.55)
		add("DomeCollar", CYL, V3(0.14, 1.2, 1.2), dc * CF(0, 0.07, 0) * up, white, SP)
		add("DomeRing", CYL, V3(0.05, 0.98, 0.98), dc * CF(0, 0.16, 0) * up, silver, MET)
		local bulb = add("Bulb", CYL, V3(1.15, 0.72, 0.72), dc * CF(0, 0.75, 0) * up, green, NEON, 0.12)
		add("BulbTop", BALL, V3(0.72, 0.72, 0.72), dc * CF(0, 1.32, 0), green, NEON, 0.12)
		glow(bulb, green, 12, 2.2)
		for _, sx in ipairs({ 1, -1 }) do
			local s = sx > 0 and "R" or "L"
			add("SwitchBase" .. s, BLOCK, V3(0.08, 0.34, 0.24), CF(sx * 0.54, 0.22, 0.62), dark, SP)
			add("Switch" .. s, BLOCK, V3(0.1, 0.26, 0.18), CF(sx * 0.58, 0.22, 0.62) * CFrame.Angles(math.rad(12), 0, 0), red, NEON, 0.1)
		end
		local gripRot = CFrame.Angles(math.rad(-15), 0, 0)
		add("Grip", BLOCK, V3(0.62, 1.9, 0.72), CF(0, -1.2, 1.0) * gripRot, white, SP)
		add("GripBack", BLOCK, V3(0.66, 1.3, 0.14), CF(0, -1.15, 1.33) * gripRot, lgrey, SP)
		add("GripEnd", BLOCK, V3(0.68, 0.3, 0.8), CF(0, -2.15, 1.1) * gripRot, lgrey, SP)
		add("GuardFront", BLOCK, V3(0.5, 0.8, 0.12), CF(0, -0.85, 0.15), white, SP)
		add("GuardBottom", BLOCK, V3(0.5, 0.12, 0.7), CF(0, -1.25, 0.45), white, SP)
		add("Trigger", BLOCK, V3(0.12, 0.34, 0.14), CF(0, -0.72, 0.4) * CFrame.Angles(math.rad(-10), 0, 0), dark, SP)
		return t, {}
	end

	-- МОРТИ: детская пушка с «лицом» (два синих глаза, красный нос, улыбка), в колбе шарики с жидкостью
	B.kidmorty = function()
		local t, add = base("Портальная пушка Морти", V3(1.1, 0.9, 2.5), C(208, 212, 216), SP, V3(0, -1.1, 0.95))
		local body, lite, dgrey, dark = C(208, 212, 216), C(236, 238, 240), C(110, 116, 124), C(40, 42, 48)
		local blue, red, green, bluegrip = C(70, 170, 230), C(235, 40, 40), C(90, 230, 90), C(40, 100, 170)
		local glassG = C(110, 235, 110)
		add("FrontBlock", BLOCK, V3(1.25, 1.05, 1.2), CF(0, 0.05, -0.7), lite, SP)
		add("FrontLid", BLOCK, V3(1.25, 0.12, 1.2), CF(0, 0.62, -0.7), body, SP)
		add("BackBall", BALL, V3(1.0, 1.0, 1.0), CF(0, 0, 1.25), body, SP)
		for _, sx in ipairs({ 1, -1 }) do
			local s = sx > 0 and "R" or "L"
			add("SideFrame" .. s, BLOCK, V3(0.03, 0.5, 1.0), CF(sx * 0.56, 0.12, 0.5), dark, SP)
			add("SidePanel" .. s, BLOCK, V3(0.03, 0.4, 0.9), CF(sx * 0.575, 0.12, 0.5), green, NEON, 0.35)
			add("EyeRim" .. s, CYL, V3(0.07, 0.42, 0.42), CF(sx * 0.36, 0.3, -1.37) * fwdC, dgrey, MET)
			add("Eye" .. s, CYL, V3(0.08, 0.32, 0.32), CF(sx * 0.36, 0.3, -1.40) * fwdC, blue, NEON, 0.1)
		end
		add("FaceBase", BLOCK, V3(1.15, 0.9, 0.08), CF(0, 0.08, -1.32), body, SP)
		add("Nose", BALL, V3(0.28, 0.28, 0.28), CF(0, 0.12, -1.44), red, NEON, 0.05)
		for i = -2, 2 do
			add("Smile" .. i, BLOCK, V3(0.15, 0.07, 0.06), CF(i * 0.14, -0.26 + 0.13 * (i / 2) ^ 2, -1.4) * CFrame.Angles(0, 0, i * 0.3), green, NEON, 0.05)
		end
		local tip = add("Tip", BALL, V3(0.2, 0.2, 0.2), CF(0, 0.08, -1.6), green, NEON, 1)
		glow(tip, green, 8, 1)
		local dc = CF(0, 0.7, -0.2)
		add("FlaskBase", CYL, V3(0.14, 0.95, 0.95), dc * CF(0, 0.07, 0) * up, dgrey, MET)
		add("FlaskRing", CYL, V3(0.05, 0.8, 0.8), dc * CF(0, 0.16, 0) * up, lite, SP)
		add("Flask", CYL, V3(1.05, 0.72, 0.72), dc * CF(0, 0.7, 0) * up, glassG, GLASS, 0.45)
		local top = add("FlaskTop", BALL, V3(0.72, 0.72, 0.72), dc * CF(0, 1.22, 0), glassG, GLASS, 0.45)
		glow(top, green, 10, 1.5)
		-- шарики с жидкостью внутри колбы (вместо жидкости): стеклянная оболочка + светящаяся капля, крутятся
		local anim = {}
		for i = 1, 8 do
			local a = i * 2.4
			local r = 0.07 + (i % 3) * 0.05
			local y = 0.35 + (i - 1) * 0.1
			local sz = 0.2 + (i % 3) * 0.045
			local off = dc * CF(math.cos(a) * r, y, math.sin(a) * r)
			local _, w = add("OrbShell" .. i, BALL, V3(sz, sz, sz), off, C(170, 255, 170), GLASS, 0.3)
			local _, w2 = add("OrbLiquid" .. i, BALL, V3(sz * 0.62, sz * 0.62, sz * 0.62), off, C(60, 255, 90), NEON, 0.12)
			local spd = ((i % 2 == 0) and 1 or -1) * (1.2 + 0.25 * i)
			anim[#anim + 1] = { w = w, pre = dc, post = dc:Inverse() * w.C0, spd = spd }
			anim[#anim + 1] = { w = w2, pre = dc, post = dc:Inverse() * w2.C0, spd = spd }
		end
		local gripRot = CFrame.Angles(math.rad(-20), 0, 0)
		add("Grip", BLOCK, V3(0.6, 1.7, 0.75), CF(0, -1.1, 0.95) * gripRot, dark, SP)
		add("GripBlue", CYL, V3(0.7, 0.7, 0.7), CF(0, -2.0, 1.05) * gripRot * up, bluegrip, SP)
		add("Trigger", BLOCK, V3(0.12, 0.34, 0.14), CF(0, -0.55, 0.35) * CFrame.Angles(math.rad(-10), 0, 0), body, SP)
		return t, anim
	end
end

local function buildTool(skin)
	local sb = portals.SkinBuild[skin]
	if sb then return sb() end
	if skin == "custom" then
		local m, info = ICONS.runModel(S("cgcode"))
		if m then
			local okC, tc, ac = pcall(ICONS.customTool, m, info, ICONS.cgCfg())
			if okC and tc then return tc, ac end
			warn("[PortalGun] своя пушка: " .. tostring(tc))
		else
			warn("[PortalGun] своя пушка: " .. tostring(info))
		end
		skin = "rick" -- не получилось — выдаём обычную пушку
	end
	local t = Instance.new("Tool")
	t.Name = "Портальная пушка"
	t.ToolTip = "Портальная пушка Рика"
	t.CanBeDropped = false
	t.RequiresHandle = true
	t.GripPos = Vector3.new(0, -1.15, 1.05) -- рука держит рукоятку

	-- СКИН «ЗЛОЙ МОРТИ»: золотая пушка — квадратный ствол с оранжевым шаром, серые диски по бокам,
	-- банка с оранжевой жидкостью, чёрный блок, пробка и красные провода (по фото)
	if skin == "morty" then
		t.ToolTip = "Портальная пушка Злого Морти"
		t.GripPos = Vector3.new(0, -1.2, 0.85)
		local V3, CF = Vector3.new, CFrame.new
		local gold = Color3.fromRGB(226, 172, 38)
		local goldD = Color3.fromRGB(170, 124, 28)
		local goldL = Color3.fromRGB(246, 204, 76)
		local dark = Color3.fromRGB(34, 34, 38)
		local grey = Color3.fromRGB(150, 160, 172)
		local orange = Color3.fromRGB(255, 140, 20)
		local amber = Color3.fromRGB(255, 172, 52)
		local red = Color3.fromRGB(225, 30, 30)
		local MET, SP, GLASS, NEON, PLASTIC = Enum.Material.Metal, Enum.Material.SmoothPlastic, Enum.Material.Glass, Enum.Material.Neon, Enum.Material.Plastic
		local BLOCK, CYL, BALL = Enum.PartType.Block, Enum.PartType.Cylinder, Enum.PartType.Ball
		local up = CFrame.Angles(0, 0, math.pi / 2) -- цилиндр стоит вертикально

		local handle = Instance.new("Part")
		handle.Name = "Handle"
		handle.Size = V3(1.0, 0.85, 2.6)
		handle.Color = gold
		handle.Material = MET
		handle.CanCollide = false
		handle.Massless = true
		handle.Parent = t

		local function add(name, shape, size, offset, color, mat, tr)
			local p = Instance.new("Part")
			p.Name = name
			p.Shape = shape
			p.Size = size
			p.Color = color
			p.Material = mat or MET
			p.Transparency = tr or 0
			p.CanCollide = false
			p.CanQuery = false
			p.CanTouch = false
			p.Massless = true
			local w = Instance.new("Weld")
			w.Part0 = handle
			w.Part1 = p
			w.C0 = offset
			w.Parent = p
			p.Parent = t
			return p
		end

		-- корпус: боковые полосы и задняя крышка
		add("StripeR", BLOCK, V3(0.02, 0.15, 2.0), CF(0.505, -0.1, 0.1), goldD, MET)
		add("StripeL", BLOCK, V3(0.02, 0.15, 2.0), CF(-0.505, -0.1, 0.1), goldD, MET)
		add("BackCap", BLOCK, V3(1.02, 0.87, 0.12), CF(0, 0, 1.31), goldD, MET)
		add("TopPlate", BLOCK, V3(0.9, 0.1, 1.9), CF(0, 0.475, 0.3), goldL, MET)

		-- большой квадратный ствол спереди (пустая труба из четырёх стенок + задняя стенка)
		local by = 0.12
		add("BarrelTop", BLOCK, V3(1.5, 0.2, 1.5), CF(0, by + 0.65, -1.9), gold, MET)
		add("BarrelBot", BLOCK, V3(1.5, 0.2, 1.5), CF(0, by - 0.65, -1.9), gold, MET)
		add("BarrelL", BLOCK, V3(0.2, 1.1, 1.5), CF(-0.65, by, -1.9), gold, MET)
		add("BarrelR", BLOCK, V3(0.2, 1.1, 1.5), CF(0.65, by, -1.9), gold, MET)
		add("BarrelBack", BLOCK, V3(1.1, 1.1, 0.2), CF(0, by, -1.25), goldD, MET)
		add("RimTop", BLOCK, V3(1.5, 0.12, 0.12), CF(0, by + 0.65, -2.62), goldL, MET)
		add("RimBot", BLOCK, V3(1.5, 0.12, 0.12), CF(0, by - 0.65, -2.62), goldL, MET)
		add("RimL", BLOCK, V3(0.12, 1.5, 0.12), CF(-0.65, by, -2.62), goldL, MET)
		add("RimR", BLOCK, V3(0.12, 1.5, 0.12), CF(0.65, by, -2.62), goldL, MET)

		-- оранжевый светящийся шар в стволе
		local orb = add("Orb", BALL, V3(0.95, 0.95, 0.95), CF(-0.02, 0.02, -2.18), orange, NEON, 0.05)
		local ol = Instance.new("PointLight")
		ol.Color = orange
		ol.Range = 10
		ol.Brightness = 1.6
		ol.Parent = orb
		-- откуда вылетает выстрел (невидимый)
		add("Tip", BALL, V3(0.2, 0.2, 0.2), CF(0, by, -2.75), orange, NEON, 1)

		-- серые диски на боковых стенках ствола
		for _, sx in ipairs({ 1, -1 }) do
			local s = sx > 0 and "R" or "L"
			add("DiscRing" .. s, CYL, V3(0.07, 0.84, 0.84), CF(sx * 0.725, by, -1.9), goldD, MET)
			add("Disc" .. s, CYL, V3(0.1, 0.66, 0.66), CF(sx * 0.74, by, -1.9), grey, MET)
			add("DiscBolt" .. s, CYL, V3(0.12, 0.16, 0.16), CF(sx * 0.78, by, -1.9), dark, MET)
		end

		-- рукоятка уходит вниз и назад; курок
		local gripRot = CFrame.Angles(math.rad(-20), 0, 0)
		add("Grip", BLOCK, V3(0.62, 1.8, 0.8), CF(0, -1.2, 0.85) * gripRot, gold, MET)
		add("GripPlate", BLOCK, V3(0.66, 1.2, 0.12), CF(0, -1.15, 1.2) * gripRot, goldD, MET)
		add("GripEnd", BLOCK, V3(0.7, 0.25, 0.9), CF(0, -2.05, 0.95) * gripRot, goldL, MET)
		add("Trigger", BLOCK, V3(0.12, 0.4, 0.14), CF(0, -0.62, 0.3) * CFrame.Angles(math.rad(-10), 0, 0), dark, SP)

		-- банка с оранжевой жидкостью, чуть наклонена
		local jarCF = CF(0, 1.05, -0.55) * CFrame.Angles(0, 0, math.rad(10))
		add("Jar", CYL, V3(1.15, 0.75, 0.75), jarCF * up, amber, GLASS, 0.35)
		local liq = add("Liquid", CYL, V3(0.95, 0.62, 0.62), jarCF * up, Color3.fromRGB(235, 130, 20), NEON, 0.55)
		local jl = Instance.new("PointLight")
		jl.Color = amber
		jl.Range = 8
		jl.Brightness = 1
		jl.Parent = liq
		add("JarBase", CYL, V3(0.14, 0.82, 0.82), jarCF * CF(0, -0.62, 0) * up, goldD, MET)
		add("JarCap", CYL, V3(0.16, 0.82, 0.82), jarCF * CF(0, 0.64, 0) * up, goldD, MET)
		local goo = Color3.fromRGB(70, 24, 10)
		add("Goo1", BALL, V3(0.36, 0.3, 0.26), jarCF * CF(0.08, 0.1, 0) * CFrame.Angles(0.4, 0.3, 0.2), goo, SP)
		add("Goo2", BALL, V3(0.26, 0.4, 0.22), jarCF * CF(-0.1, -0.1, 0.05) * CFrame.Angles(0.2, 0.9, 0.5), goo, SP)
		add("Goo3", BALL, V3(0.4, 0.2, 0.2), jarCF * CF(0.02, 0.3, -0.05) * CFrame.Angles(0.7, 0.1, 0.9), goo, SP)
		add("Goo4", BALL, V3(0.2, 0.34, 0.2), jarCF * CF(0.05, -0.28, 0.05) * CFrame.Angles(0.3, 0.5, 0.1), goo, SP)

		-- чёрный блок, лампочка, пробка
		add("BlackBox", BLOCK, V3(0.55, 0.3, 0.7), CF(-0.15, 0.68, 0.75), dark, SP)
		add("BoxLed", BALL, V3(0.1, 0.1, 0.1), CF(-0.25, 0.86, 0.92), red, NEON)
		add("Cork", CYL, V3(0.4, 0.3, 0.3), CF(0.3, 0.7, 0.6) * up, Color3.fromRGB(122, 82, 46), PLASTIC)
		add("CorkTop", CYL, V3(0.06, 0.34, 0.34), CF(0.3, 0.92, 0.6) * up, goldL, MET)

		-- красные провода дугой (кривая Безье из коротких цилиндров)
		local function wire(p1, p2, lift, name)
			local c = (p1 + p2) / 2 + V3(0, lift, 0)
			local prev
			for i = 0, 9 do
				local k = i / 9
				local p = p1 * ((1 - k) ^ 2) + c * (2 * (1 - k) * k) + p2 * (k * k)
				if prev then
					local dv = p - prev
					local mid = (p + prev) / 2
					add(name, CYL, V3(dv.Magnitude + 0.05, 0.07, 0.07), CFrame.lookAt(mid, mid + dv) * CFrame.Angles(0, math.pi / 2, 0), red, PLASTIC)
				end
				prev = p
			end
		end
		wire(V3(0.3, 0.92, 0.6), V3(-0.12, 0.86, 0.8), 0.55, "Wire1")
		wire(V3(0.34, 0.9, 0.55), V3(0.4, 0.58, -1.2), 0.75, "Wire2")

		return t, {}
	end

	local white = Color3.fromRGB(240, 242, 245)   -- верхние панели
	local body = Color3.fromRGB(214, 218, 223)    -- корпус
	local grey = Color3.fromRGB(176, 182, 190)
	local dgrey = Color3.fromRGB(112, 118, 126)
	local dark = Color3.fromRGB(34, 36, 42)
	local black = Color3.fromRGB(18, 18, 20)
	local cream = Color3.fromRGB(236, 224, 192)
	local green = Color3.fromRGB(80, 255, 110)
	local glassC = Color3.fromRGB(90, 235, 90)
	local SP, NEON, GLASS, MET = Enum.Material.SmoothPlastic, Enum.Material.Neon, Enum.Material.Glass, Enum.Material.Metal
	local BLOCK, CYL, BALL = Enum.PartType.Block, Enum.PartType.Cylinder, Enum.PartType.Ball
	local up = CFrame.Angles(0, 0, math.pi / 2)   -- цилиндр стоит вертикально
	local fwd = CFrame.Angles(0, math.pi / 2, 0)  -- цилиндр лежит вдоль ствола (в сторону -Z)
	local side = CFrame.Angles(0, 0, 0)           -- цилиндр смотрит вбок (ось X)
	local V3, CF = Vector3.new, CFrame.new

	-- корпус (Handle): светлая коробка, сзади уже, спереди выше (как на фото)
	local handle = Instance.new("Part")
	handle.Name = "Handle"
	handle.Size = V3(1.0, 0.8, 2.7)
	handle.Color = body
	handle.Material = SP
	handle.CanCollide = false
	handle.Massless = true
	handle.Parent = t

	local function add(name, shape, size, offset, color, mat, tr)
		local p = Instance.new("Part")
		p.Name = name
		p.Shape = shape
		p.Size = size
		p.Color = color
		p.Material = mat or SP
		p.Transparency = tr or 0
		p.CanCollide = false
		p.CanQuery = false
		p.Massless = true
		local w = Instance.new("Weld")
		w.Part0 = handle
		w.Part1 = p
		w.C0 = offset
		w.Parent = p
		p.Parent = t
		return p, w
	end

	-- переднее утолщение корпуса и белые верхние панели
	add("FrontBlock", BLOCK, V3(1.1, 0.95, 1.25), CF(0, 0.05, -0.8), body, SP)
	add("TopFront", BLOCK, V3(1.0, 0.06, 1.15), CF(0, 0.555, -0.8), white, SP)
	add("TopRear", BLOCK, V3(0.9, 0.06, 1.5), CF(0, 0.43, 0.65), white, SP)
	add("SideStripeR", BLOCK, V3(0.02, 0.12, 2.3), CF(0.505, -0.15, 0), grey, SP)
	add("SideStripeL", BLOCK, V3(0.02, 0.12, 2.3), CF(-0.505, -0.15, 0), grey, SP)
	add("BackCap", BLOCK, V3(1.02, 0.82, 0.12), CF(0, 0, 1.36), dgrey, SP)

	-- тёмный нос с прорезью, излучатель и зелёный кончик (Tip — откуда вылетает выстрел)
	add("Nose", BLOCK, V3(0.8, 0.6, 0.35), CF(0, 0.02, -1.62), dgrey, SP)
	add("NoseSlot", BLOCK, V3(0.5, 0.12, 0.12), CF(0, 0.02, -1.8), dark, SP)
	add("Emitter", CYL, V3(0.18, 0.36, 0.36), CF(0, 0.02, -1.87) * fwd, dark, SP)
	local tip = add("Tip", BALL, V3(0.24, 0.24, 0.24), CF(0, 0.02, -2.0), green, NEON, 0.15)
	local tl = Instance.new("PointLight")
	tl.Color = green
	tl.Range = 8
	tl.Brightness = 1.2
	tl.Parent = tip

	-- рукоятка уходит вниз и назад; светлый «башмак» на конце; курок
	local gripRot = CFrame.Angles(math.rad(-22), 0, 0)
	add("Grip", BLOCK, V3(0.6, 1.8, 0.75), CF(0, -1.15, 1.05) * gripRot, body, SP)
	add("GripSide", BLOCK, V3(0.64, 1.3, 0.2), CF(0, -1.1, 1.38) * gripRot, grey, SP)
	add("GripEnd", BLOCK, V3(0.68, 0.34, 0.85), CF(0, -2.12, 1.44) * gripRot, cream, SP)
	add("GripToe", BALL, V3(0.7, 0.5, 0.7), CF(0, -2.3, 1.5) * gripRot, cream, SP)
	add("Trigger", BLOCK, V3(0.12, 0.36, 0.14), CF(0, -0.58, 0.42) * CFrame.Angles(math.rad(-10), 0, 0), dark, SP)

	-- ВЫСОКАЯ зелёная колба спереди сверху
	local dc = CF(0, 0.585, -0.8)
	add("DomeRing", CYL, V3(0.08, 0.98, 0.98), dc * CF(0, 0.04, 0) * up, dark, SP)
	add("DomeBase", CYL, V3(0.2, 0.82, 0.82), dc * CF(0, 0.14, 0) * up, dgrey, MET)
	add("Dome", CYL, V3(1.0, 0.72, 0.72), dc * CF(0, 0.74, 0) * up, glassC, GLASS, 0.35)
	add("DomeTop", BALL, V3(0.72, 0.72, 0.72), dc * CF(0, 1.24, 0), glassC, GLASS, 0.35)
	local core = add("SwirlCore", BALL, V3(0.3, 0.3, 0.3), dc * CF(0, 0.85, 0), Color3.fromRGB(215, 255, 215), NEON, 0.1)
	local dl = Instance.new("PointLight")
	dl.Color = green
	dl.Range = 12
	dl.Brightness = 2
	dl.Parent = core
	-- вихрь внутри колбы: светящиеся диски крутятся, пока пушка в руках
	local anim = {}
	local function swirl(name, y, dia, tilt, spd, color)
		local _, w = add(name, CYL, V3(0.04, dia, dia), dc * CF(0, y, 0) * tilt * up, color or green, NEON, 0.25)
		anim[#anim + 1] = { w = w, pre = dc, post = dc:Inverse() * w.C0, spd = spd }
	end
	swirl("Swirl1", 0.55, 0.5, CFrame.Angles(0.5, 0, 0), 2.4)
	swirl("Swirl2", 0.85, 0.46, CFrame.Angles(-0.5, 0.6, 0), -3.1, Color3.fromRGB(215, 255, 215))
	swirl("Swirl3", 1.15, 0.34, CFrame.Angles(0.4, 1.2, 0), 4.0)

	-- красный дисплей на верхней панели сзади колбы (чуть наклонён)
	local dispTilt = CFrame.Angles(math.rad(-6), 0, 0)
	add("DisplayFrame", BLOCK, V3(0.62, 0.05, 0.46), CF(0, 0.475, 0.2) * dispTilt, dark, SP)
	add("Display", BLOCK, V3(0.5, 0.04, 0.34), CF(0, 0.5, 0.2) * dispTilt, Color3.fromRGB(235, 35, 45), NEON, 0.05)

	-- большая чёрная ручка-регулятор на боку (с обеих сторон), светлая метка
	for _, sx in ipairs({ 1, -1 }) do
		local s = sx > 0 and "R" or "L"
		add("KnobRim" .. s, CYL, V3(0.06, 0.78, 0.78), CF(sx * 0.53, -0.02, 0.55) * side, dgrey, SP)
		add("Knob" .. s, CYL, V3(0.2, 0.64, 0.64), CF(sx * 0.62, -0.02, 0.55) * side, black, SP)
		add("KnobMark" .. s, BLOCK, V3(0.03, 0.34, 0.07), CF(sx * 0.73, -0.02, 0.55), grey, SP)
	end
	return t, anim
end

local function giveTool()
	-- убираем старые копии пушки (после повторного запуска скрипта и т.п.)
	for _, holder in ipairs({ lp:FindFirstChildOfClass("Backpack"), lp.Character }) do
		if holder then
			for _, o in ipairs(holder:GetChildren()) do
				if o:IsA("Tool") and o.Name == "Портальная пушка" then o:Destroy() end
			end
		end
	end
	if toolRef then toolRef:Destroy() toolRef = nil end
	local t, anim = buildTool(S("gunskin"))
	if ICONS.gun ~= "" then t.TextureId = ICONS.gun end
	-- размер пушки (МЕНЮ ▸ СКИН ▸ РАЗМЕР ПУШКИ): масштабируем детали, сварку, хват, свет и вихрь
	do
		local k = math.clamp((tonumber(S("gunsize")) or 100) / 100, 0.3, 3)
		if math.abs(k - 1) > 0.001 then
			local function sc(cf)
				return (cf - cf.Position) + cf.Position * k
			end
			for _, d in ipairs(t:GetDescendants()) do
				if d:IsA("BasePart") then
					d.Size = d.Size * k
				elseif d:IsA("JointInstance") then
					d.C0 = sc(d.C0)
					d.C1 = sc(d.C1)
				elseif d:IsA("Attachment") then
					d.CFrame = sc(d.CFrame)
				elseif d:IsA("PointLight") then
					d.Range = d.Range * k
				end
			end
			t.GripPos = t.GripPos * k
			for _, e in ipairs(anim) do
				e.pre = sc(e.pre)
				e.post = sc(e.post)
			end
		end
	end
	toolRef = t
	local spinConn
	local function stopSpin()
		if spinConn then spinConn:Disconnect() spinConn = nil end
	end
	t.Equipped:Connect(function()
		for _, d in ipairs(t:GetChildren()) do
			if d:IsA("BasePart") and d:GetAttribute("Glow") then
				d.Color = theme().c1
				local l = d:FindFirstChildOfClass("PointLight")
				if l then l.Color = theme().c1 end
			end
		end
		gunEquipped = true
		refreshGunUI()
		pcall(portals.Outfit.apply, S("gunskin"))
		stopSpin()
		spinConn = RunService.Heartbeat:Connect(function()
			if not t.Parent then stopSpin() return end
			local now = os.clock()
			for _, e in ipairs(anim) do
				e.w.C0 = e.pre * CFrame.Angles(0, now * e.spd, 0) * e.post
			end
		end)
	end)
	t.Unequipped:Connect(function()
		stopSpin()
		gunEquipped = false
		refreshGunUI()
		pcall(portals.Outfit.apply, nil)
		-- map.swap = идёт смена скина: меню закрывать не нужно
		if closeMenu and not (map and map.swap) then closeMenu() end
	end)
	t.Activated:Connect(function()
		if S("tapfire") and not busy then fire() end
	end)
	local bp = lp:FindFirstChildOfClass("Backpack") or lp:WaitForChild("Backpack", 8)
	if bp then
		t.Parent = bp
	elseif lp.Character then
		t.Parent = lp.Character -- рюкзака нет — пушка сразу в руки
	else
		t:Destroy()
		toolRef = nil
		error("нет ни Backpack, ни персонажа")
	end
end

----------------------------------------------------------------------
-- ФЛЯГА РИКА (второй предмет в инвентаре, выдаётся вместе с пушкой)
-- стальная фляжка · рифлёная крышка с петлёй · узорные полосы по бокам
-- нажми на экран / кнопку «▲ ПИТЬ» — Рик делает глоток
----------------------------------------------------------------------
local giveFlask
do
	local flaskRef
	local drinking = false
	local cancelDrink

	local function refreshFlaskBtn()
		local c = lp.Character
		local eq = flaskRef ~= nil and c ~= nil and flaskRef.Parent == c
		flaskBtn.BackgroundColor3 = eq and PAL.green or PAL.slate
	end

	local function buildFlask()
		local V3, CF = Vector3.new, CFrame.new
		local steel = Color3.fromRGB(190, 195, 202)
		local darkSteel = Color3.fromRGB(140, 146, 154)
		local capSteel = Color3.fromRGB(205, 210, 216)
		local band = Color3.fromRGB(46, 48, 53)
		local braid = Color3.fromRGB(208, 212, 218)
		local MET = Enum.Material.Metal
		local BLOCK, CYL = Enum.PartType.Block, Enum.PartType.Cylinder
		local up = CFrame.Angles(0, 0, math.pi / 2) -- цилиндр стоит вертикально
		-- Handle ниже центра фляжки на 0.15, поэтому Y считаем от центра фляжки и сдвигаем
		local function P(x, y, z) return CF(x, y + 0.15, z) end

		local t = Instance.new("Tool")
		t.Name = "Фляга Рика"
		t.ToolTip = "Фляга Рика"
		t.CanBeDropped = false
		t.RequiresHandle = true
		t.GripPos = V3(0, 0.05, 0)
		if ICONS.flask ~= "" then t.TextureId = ICONS.flask end

		-- нижняя часть корпуса: плоская стальная фляжка (широкие стороны смотрят вбок)
		local h = Instance.new("Part")
		h.Name = "Handle"
		h.Size = V3(0.3, 0.8, 0.85)
		h.Color = steel
		h.Material = MET
		h.Reflectance = 0.15
		h.CanCollide = false
		h.Massless = true
		h.Parent = t

		local function add(name, shape, size, offset, color, mat, tr)
			local p = Instance.new("Part")
			p.Name = name
			p.Shape = shape
			p.Size = size
			p.Color = color
			p.Material = mat
			p.Reflectance = (mat == MET) and 0.15 or 0
			p.Transparency = tr or 0
			p.CanCollide = false
			p.CanQuery = false
			p.CanTouch = false
			p.Massless = true
			p.Parent = t
			local w = Instance.new("Weld")
			w.Part0 = h
			w.Part1 = p
			w.C0 = offset
			w.Parent = p
			return p
		end

		-- верх корпуса со скруглёнными плечами
		add("ShoulderMid", BLOCK, V3(0.3, 0.3, 0.55), P(0, 0.4, 0), steel, MET)
		add("ShoulderA", CYL, V3(0.3, 0.3, 0.3), P(0, 0.4, 0.275), steel, MET)
		add("ShoulderB", CYL, V3(0.3, 0.3, 0.3), P(0, 0.4, -0.275), steel, MET)

		-- горлышко и рифлёная крышка
		add("Neck", CYL, V3(0.2, 0.3, 0.3), P(0, 0.65, 0) * up, darkSteel, MET)
		add("Cap", CYL, V3(0.24, 0.36, 0.36), P(0, 0.87, 0) * up, capSteel, MET)
		for i = 0, 11 do
			add("Knurl" .. i, BLOCK, V3(0.03, 0.24, 0.04), P(0, 0.87, 0) * CFrame.Angles(0, i * math.pi / 6, 0) * CF(0.18, 0, 0), darkSteel, MET)
		end
		-- страховочная петля крышки (как на фото)
		add("Tether", BLOCK, V3(0.04, 0.04, 0.34), P(0, 0.63, -0.2), darkSteel, MET)
		add("TetherRing", CYL, V3(0.03, 0.13, 0.13), P(0, 0.63, -0.4), darkSteel, MET)

		-- правый бок: гладкая середина и две узорные полосы по краям (кельтское плетение, как на фото)
		local function sgui(part, face, w, hpx)
			local g = Instance.new("SurfaceGui")
			g.Face = face
			g.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
			g.CanvasSize = Vector2.new(w, hpx)
			g.LightInfluence = 1
			g.Parent = part
			return g
		end
		for i, z in ipairs({ 0.3, -0.3 }) do
			local strip = add("Band" .. i, BLOCK, V3(0.012, 0.85, 0.15), P(0.156, -0.075, z), band, MET)
			local g = sgui(strip, Enum.NormalId.Right, 90, 510)
			for r = 0, 9 do
				for k, rot in ipairs({ 32, -32 }) do
					local f = Instance.new("Frame")
					f.AnchorPoint = Vector2.new(0.5, 0.5)
					f.Position = UDim2.fromOffset(45, 26 + r * 51)
					f.Size = UDim2.fromOffset(13, 66)
					f.Rotation = rot
					f.BackgroundColor3 = braid
					f.BorderSizePixel = 0
					f.ZIndex = k
					f.Parent = g
					local c = Instance.new("UICorner")
					c.CornerRadius = UDim.new(0.5, 0)
					c.Parent = f
				end
			end
		end

		return t
	end

	local function ease(x)
		x = math.clamp(x, 0, 1)
		return x * x * (3 - 2 * x)
	end

	-- глоток: рука поднимается к лицу, фляга наклоняется к рту, пара глотков, обратно
	local function drink(t)
		if drinking then return end
		local char = lp.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		local head = char and char:FindFirstChild("Head")
		local handle = t:FindFirstChild("Handle")
		if not (hum and head and handle and hum.Health > 0 and t.Parent == char) then return end

		local grip = char:FindFirstChild("RightGrip", true)
		if grip and not (grip:IsA("JointInstance") and grip.Part0 and grip.Part1 == handle) then grip = nil end
		local r15 = hum.RigType == Enum.HumanoidRigType.R15
		local sh = char:FindFirstChild("RightShoulder", true) or char:FindFirstChild("Right Shoulder", true)
		local elb = r15 and char:FindFirstChild("RightElbow", true) or nil
		local nk = r15 and char:FindFirstChild("Neck", true) or nil
		if sh and not sh:IsA("JointInstance") then sh = nil end
		if elb and not elb:IsA("JointInstance") then elb = nil end
		if nk and not nk:IsA("JointInstance") then nk = nil end

		local YAW = 0.9                         -- рука уходит к центру (к лицу)
		local PITCH = r15 and -0.7 or 0.45      -- локоть ниже / выше
		local ELBOW = 1.9                       -- сгиб локтя (только R15)
		local NECK = 0.22                       -- голова чуть запрокидывается (только R15)
		local shC0, elC0, nkC0 = sh and sh.C0, elb and elb.C0, nk and nk.C0
		local baseC1 = grip and grip.C1

		drinking = true
		local conn
		local finished = false
		local function restore()
			if finished then return end
			finished = true
			if conn then conn:Disconnect() conn = nil end
			if sh and sh.Parent then sh.C0 = shC0 end
			if elb and elb.Parent then elb.C0 = elC0 end
			if nk and nk.Parent then nk.C0 = nkC0 end
			if grip and grip.Parent and baseC1 then grip.C1 = baseC1 end
			drinking = false
			cancelDrink = nil
		end
		cancelDrink = restore

		local t0 = os.clock()
		local UP, HOLD, DOWN = 0.55, 1.6, 0.5
		conn = RunService.RenderStepped:Connect(function()
			if not (t.Parent == char and hum.Health > 0 and head.Parent) then restore() return end
			local tt = os.clock() - t0
			if tt >= UP + HOLD + DOWN then
				restore()
				return
			end
			local a
			if tt < UP then a = ease(tt / UP)
			elseif tt < UP + HOLD then a = 1
			else a = 1 - ease((tt - UP - HOLD) / DOWN) end

			if sh then
				local pitchCF = r15 and CFrame.Angles(PITCH * a, 0, 0) or CFrame.Angles(0, 0, PITCH * a)
				sh.C0 = shC0 * CFrame.Angles(0, YAW * a, 0) * pitchCF
			end
			if elb then elb.C0 = elC0 * CFrame.Angles(ELBOW * a, 0, 0) end
			if nk then nk.C0 = nkC0 * CFrame.Angles(NECK * a, 0, 0) end

			if grip and grip.Parent then
				local H = grip.Part0.CFrame * grip.C0               -- где сейчас ладонь
				local baseCF = H * baseC1:Inverse()                 -- где фляга в руке
				local tilt = math.rad(100) + math.rad(5) * math.sin(tt * 9) * a -- наклон + «глотки»
				local hs = head.Size
				local mouth = Vector3.new(0, -hs.Y * 0.2, -hs.Z * 0.5)
				local nd = Vector3.new(0, math.cos(tilt), math.sin(tilt))
				local target = head.CFrame * CFrame.new(mouth - nd * 1.12 + Vector3.new(0.05, 0, -0.04)) * CFrame.Angles(tilt, 0, 0)
				grip.C1 = baseCF:Lerp(target, a):Inverse() * H
			end
		end)
	end

	giveFlask = function(onlyIfMissing)
		local bp = lp:FindFirstChildOfClass("Backpack")
		local ch = lp.Character
		if onlyIfMissing and flaskRef and flaskRef.Parent and (flaskRef.Parent == bp or flaskRef.Parent == ch) then
			return true
		end
		if not bp then return false end
		if cancelDrink then cancelDrink() end
		for _, holder in ipairs({ bp, ch }) do
			if holder then
				for _, o in ipairs(holder:GetChildren()) do
					if o:IsA("Tool") and o.Name == "Фляга Рика" then o:Destroy() end
				end
			end
		end
		if flaskRef then flaskRef:Destroy() flaskRef = nil end
		local t = buildFlask()
		flaskRef = t
		t.Equipped:Connect(refreshFlaskBtn)
		t.Unequipped:Connect(function()
			if cancelDrink then cancelDrink() end
			refreshFlaskBtn()
		end)
		t.Activated:Connect(function() drink(t) end)
		t.Parent = bp
		refreshFlaskBtn()
		return true
	end

	-- иконка кнопки: 3D-модель предмета в ViewportFrame (картинка из самой модели)
	local function makeIcon(btn, tool, dir)
		local ok, err = pcall(function()
			local handle = tool:FindFirstChild("Handle")
			handle.CFrame = CFrame.new()
			local model = Instance.new("Model")
			for _, d in ipairs(tool:GetChildren()) do
				if d:IsA("BasePart") then
					d.Anchored = true
					local w = d:FindFirstChildOfClass("Weld")
					if w and w.Part0 == handle then d.CFrame = handle.CFrame * w.C0 end
				end
			end
			for _, d in ipairs(tool:GetChildren()) do
				if d:IsA("BasePart") then d.Parent = model end
			end
			local vp = Instance.new("ViewportFrame")
			vp.BackgroundTransparency = 1
			vp.Position = UDim2.fromOffset(3, 3)
			vp.Size = UDim2.new(1, -6, 1, -6)
			vp.Ambient = Color3.fromRGB(160, 160, 168)
			vp.LightColor = Color3.fromRGB(255, 255, 255)
			vp.LightDirection = Vector3.new(-0.6, -1, -0.5)
			vp.ZIndex = btn.ZIndex + 1
			pcall(function() vp.Interactable = false end)
			model.Parent = vp
			local cf, size = model:GetBoundingBox()
			local cam = Instance.new("Camera")
			cam.FieldOfView = 30
			local dist = size.Magnitude / 2 / math.sin(math.rad(15)) * 0.95
			cam.CFrame = CFrame.lookAt(cf.Position + dir.Unit * dist, cf.Position)
			cam.Parent = vp
			vp.CurrentCamera = cam
			vp.Parent = btn
			tool:Destroy()
		end)
		if not ok then warn("[PortalGun] иконка не создалась: " .. tostring(err)) end
	end
	do
		local okG, gt = pcall(buildTool, S("gunskin"))
		if okG and gt then makeIcon(gunBtn, gt, Vector3.new(1, 0.35, 0.4)) end
		local okF, ft = pcall(buildFlask)
		if okF and ft then makeIcon(flaskBtn, ft, Vector3.new(1, 0.15, -0.35)) end
	end

	-- кнопка справа: взять флягу / сделать глоток
	flaskBtn.Activated:Connect(function()
		local c, _, hum = getChar()
		if not hum then return end
		if not (flaskRef and flaskRef.Parent) then
			if not giveFlask() then return end
		end
		if flaskRef.Parent == c then
			drink(flaskRef)
		else
			pcall(function() hum:EquipTool(flaskRef) end)
			if flaskRef.Parent ~= c then flaskRef.Parent = c end
		end
	end)
end

-- выдача с повторами; не даёт запуститься двум выдачам одновременно
local giving = false
local function giveToolSafe()
	if giving then return false end
	giving = true
	local done = false
	for attempt = 1, 3 do
		local ok, err = pcall(giveTool)
		if ok then
			__printf("пушка выдана")
			local okF, errF = pcall(giveFlask)
			if not okF then warn("[PortalGun] фляга не выдана: " .. tostring(errF)) end
			done = true
			break
		end
		warn("[PortalGun] не удалось выдать пушку (попытка " .. attempt .. "): " .. tostring(err))
		if attempt == 3 then __showFatal("Пушка не создалась:\n" .. tostring(err)) end
		task.wait(1)
	end
	giving = false
	return done
end

-- кнопка «ПУШКА» справа: взять в руки / убрать
gunBtn.Activated:Connect(function()
	local c, _, hum = getChar()
	if not hum then return end
	if toolRef and toolRef.Parent == c then
		pcall(function() hum:UnequipTools() end)
		if toolRef and toolRef.Parent == c then
			local bp = lp:FindFirstChildOfClass("Backpack")
			if bp then toolRef.Parent = bp end
		end
		return
	end
	if not (toolRef and toolRef.Parent) then
		if not giveToolSafe() then return end
	end
	local ok = pcall(function() hum:EquipTool(toolRef) end)
	if not ok or toolRef.Parent ~= c then toolRef.Parent = c end
end)

----------------------------------------------------------------------
-- СВОЙ ХОТБАР С ИКОНКАМИ (вместо названий в стандартной панели Roblox)
-- Картинки нарисованы по твоим скринам (пиксельные), грузить в Roblox ничего не нужно.
-- Если впишешь ID в ICONS (gun / flask) — возьмутся они, и они же попадут в Tool.TextureId.
-- Всё внутри do…end: на верхнем уровне новых local нет (лимит 200).
----------------------------------------------------------------------
do
	local PIX = {
	gun = { n = 40, pal = "95F165 626D5D F1F8E8 CAEEA9 E5E9DF CACAC9 E2E2E2 DADADA ECECEC 929B8F FEFEFE AAAAAA 9BBE8D 530009 3D3F3C 321B1E", r = "13,1,2,2,1 11,2,1,1,2 12,2,1,1,1 15,2,1,1,1 11,3,1,1,1 12,3,2,1,3 14,3,1,1,1 15,3,1,1,4 16,3,1,1,1 11,4,1,1,4 12,4,1,1,5 13,4,1,1,4 14,4,1,1,5 15,4,1,1,1 16,4,1,3,4 17,4,1,3,1 11,5,4,1,1 15,5,1,1,4 18,5,1,1,2 12,6,3,1,1 15,6,1,1,5 18,6,1,1,1 12,7,1,1,1 13,7,3,1,4 16,7,1,1,5 17,7,2,1,4 19,7,1,1,1 13,8,1,1,1 14,8,4,1,4 18,8,1,1,1 19,8,1,2,4 20,8,1,4,1 22,8,1,1,6 23,8,1,1,7 24,8,3,2,8 27,8,1,1,6 28,8,1,1,9 29,8,1,1,6 30,8,1,1,10 14,9,1,1,1 15,9,4,1,4 21,9,1,2,1 22,9,1,1,9 23,9,1,1,8 27,9,1,1,11 28,9,1,1,6 29,9,1,1,10 30,9,1,1,9 31,9,1,1,12 14,10,1,1,2 15,10,1,1,4 16,10,2,1,1 18,10,1,1,5 19,10,1,2,13 22,10,1,4,12 23,10,1,1,7 24,10,2,1,8 26,10,1,1,11 27,10,1,1,6 28,10,1,1,10 29,10,1,1,7 30,10,2,1,8 32,10,1,1,2 15,11,1,1,1 16,11,2,1,4 18,11,1,3,1 21,11,1,1,13 23,11,1,2,6 24,11,1,1,8 25,11,1,1,11 26,11,1,1,6 27,11,1,1,10 28,11,1,1,7 29,11,2,1,8 31,11,1,1,7 32,11,1,1,10 16,12,1,1,1 17,12,1,1,12 19,12,1,1,1 20,12,1,1,2 21,12,1,1,6 24,12,1,1,11 25,12,2,1,12 27,12,1,1,7 28,12,2,1,8 30,12,1,1,5 31,12,1,1,10 16,13,1,1,10 17,13,1,1,1 19,13,1,1,13 20,13,1,1,6 21,13,1,1,12 23,13,1,1,11 24,13,2,1,12 26,13,1,1,9 27,13,2,1,8 29,13,1,1,9 30,13,1,1,10 15,14,1,1,10 16,14,1,1,6 17,14,1,1,10 18,14,3,1,12 21,14,1,1,10 22,14,1,1,11 23,14,2,1,12 25,14,1,1,9 26,14,2,1,8 28,14,1,1,5 29,14,1,1,10 14,15,1,2,10 15,15,1,1,11 16,15,1,1,7 17,15,3,1,12 20,15,1,1,6 21,15,1,1,11 22,15,2,1,12 24,15,1,1,5 25,15,2,1,8 27,15,1,1,9 28,15,1,1,12 13,16,1,1,12 15,16,1,1,10 16,16,1,1,6 17,16,1,1,5 18,16,1,1,8 19,16,1,1,7 20,16,1,1,11 21,16,2,1,12 23,16,1,1,9 24,16,2,1,8 26,16,1,1,9 27,16,1,1,10 12,17,1,1,12 13,17,1,1,10 14,17,3,2,14 17,17,1,1,15 18,17,1,1,6 19,17,1,1,11 20,17,2,1,12 22,17,1,1,7 23,17,2,1,8 25,17,1,1,7 26,17,1,1,12 11,18,1,1,12 12,18,1,1,6 13,18,1,1,16 17,18,1,1,10 18,18,1,1,11 19,18,1,1,10 20,18,1,1,12 21,18,1,1,5 22,18,2,1,8 24,18,1,1,7 25,18,1,1,12 10,19,1,2,2 11,19,1,1,8 12,19,1,1,9 13,19,1,2,8 14,19,1,1,12 15,19,1,1,2 16,19,1,1,10 17,19,1,1,11 18,19,1,1,10 19,19,1,1,12 20,19,1,1,5 21,19,2,1,8 23,19,1,1,7 24,19,1,1,12 11,20,1,1,2 12,20,1,1,10 14,20,1,2,7 15,20,1,1,9 16,20,1,1,11 17,20,1,1,10 18,20,1,1,12 19,20,1,1,5 20,20,2,1,8 22,20,1,1,7 23,20,1,1,12 10,21,2,1,15 12,21,1,1,16 13,21,1,1,10 15,21,1,1,11 16,21,2,1,12 18,21,1,1,5 19,21,2,1,8 21,21,1,1,7 22,21,1,1,12 10,22,1,2,15 11,22,1,1,2 12,22,2,1,15 14,22,2,2,9 16,22,1,2,12 17,22,1,2,7 18,22,2,1,8 20,22,1,1,7 21,22,1,1,12 11,23,1,1,15 12,23,1,1,16 13,23,1,1,2 18,23,1,1,8 19,23,1,1,7 20,23,1,1,12 11,24,2,1,2 13,24,1,1,6 14,24,1,1,5 15,24,1,1,11 16,24,2,1,6 18,24,1,1,9 19,24,1,1,12 11,25,3,1,9 14,25,1,1,11 15,25,1,1,9 16,25,1,1,6 17,25,1,1,2 10,26,1,1,2 11,26,2,1,12 13,26,1,2,6 14,26,3,1,12 10,27,1,1,10 11,27,2,1,6 14,27,1,1,8 15,27,1,1,11 10,28,1,1,8 11,28,1,2,7 12,28,3,1,11 15,28,1,1,12 9,29,1,1,10 10,29,1,1,7 12,29,2,2,11 14,29,1,1,9 9,30,1,1,6 10,30,1,2,8 11,30,1,1,9 14,30,1,1,10 8,31,1,1,2 9,31,1,2,7 11,31,1,1,3 12,31,1,2,11 13,31,1,1,8 8,32,1,1,12 10,32,1,1,7 11,32,1,3,11 13,32,1,1,2 8,33,2,1,8 10,33,1,1,5 12,33,1,1,6 7,34,1,1,2 8,34,1,1,7 9,34,1,1,8 10,34,1,1,11 6,35,1,1,2 7,35,1,1,10 8,35,2,1,12 10,35,1,1,6 11,35,1,1,10 6,36,1,1,12 7,36,1,1,11 8,36,1,1,7 9,36,1,1,5 10,36,1,1,9 11,36,1,1,2 7,37,1,1,6 8,37,2,1,11 10,37,1,1,8 8,38,2,1,12 10,38,1,1,2" },
	flask = { n = 40, pal = "34383E 3C4046 B0B4BA CED2D8 ACB0B6 9DA1A6 9CA0A4 A9ACB0 B6B8BD B6B8BC C2C5C8 C2C4C7 CFD1D4 C3C6C9 B6B9BE A8ABB0 A6A9AF 989BA1 979AA0 969A9F 888B91 707479 808489 7C7F84 63666C 80848A 92969C B3B7BD B2B6BB C1C4C9 CFD2D7 CFD2D6 DDE0E4 DDDFE3 ECEEF1 ECEEF2 DEE1E5 CFD3D8 BFC3C8 BDC1C7 ADB1B7 ABAFB5 9B9FA5 8D9197 71757B 60646A FAFBFC 64686E 595C60 66696D 7D8084 7C7F82 87898C 909396 909395 9A9C9F 9A9C9E A5A6A8 A5A6A9 9B9DA0 909397 85888C 84878B 797B80 787B7F 777A7E 6C6F73 626569 4F5156", r = "15,1,11,1,1 15,2,1,7,1 16,2,1,4,2 17,2,1,4,3 18,2,1,4,2 19,2,1,4,3 20,2,1,4,2 21,2,1,4,3 22,2,1,4,2 23,2,1,4,3 24,2,1,4,2 25,2,1,7,1 8,6,7,2,1 16,6,9,1,1 16,7,9,1,4 8,8,2,2,1 16,8,9,1,1 16,9,1,2,1 17,9,7,1,5 24,9,1,2,1 10,10,6,1,1 17,10,7,1,1 25,10,5,1,1 8,11,2,1,1 10,11,1,2,6 11,11,1,2,7 12,11,1,2,8 13,11,1,2,9 14,11,1,2,10 15,11,1,2,11 16,11,1,2,12 17,11,2,2,13 19,11,1,2,11 20,11,1,2,14 21,11,1,2,9 22,11,2,2,15 24,11,1,2,16 25,11,1,2,17 26,11,1,2,18 27,11,1,2,19 28,11,1,2,20 29,11,1,2,21 30,11,2,1,1 7,12,1,2,1 8,12,1,1,22 9,12,1,1,23 30,12,1,1,24 31,12,1,1,25 32,12,1,2,1 8,13,1,23,26 9,13,1,23,27 10,13,1,23,28 11,13,1,1,29 12,13,1,23,30 13,13,1,23,31 14,13,1,23,32 15,13,1,23,33 16,13,1,23,34 17,13,1,23,35 18,13,1,23,36 19,13,1,23,33 20,13,1,23,37 21,13,1,23,31 22,13,2,23,38 24,13,1,23,39 25,13,1,23,40 26,13,1,23,41 27,13,1,23,5 28,13,1,23,42 29,13,1,23,43 30,13,1,23,44 31,13,1,23,45 6,14,1,21,1 7,14,1,21,46 11,14,1,20,47 32,14,1,21,48 33,14,1,21,1 11,34,1,2,29 7,35,1,2,1 32,35,1,2,1 8,36,1,1,49 9,36,1,1,50 10,36,1,2,51 11,36,1,2,52 12,36,1,2,53 13,36,1,2,54 14,36,1,2,55 15,36,1,2,56 16,36,1,2,57 17,36,1,2,58 18,36,1,2,59 19,36,1,2,56 20,36,1,2,60 21,36,1,2,54 22,36,2,2,61 24,36,1,2,62 25,36,1,2,63 26,36,1,2,64 27,36,1,2,65 28,36,1,2,66 29,36,1,2,67 30,36,1,1,68 31,36,1,1,69 8,37,2,1,1 30,37,2,1,1 10,38,20,1,1" },
	}
	local KEYS = {
		Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four, Enum.KeyCode.Five,
		Enum.KeyCode.Six, Enum.KeyCode.Seven, Enum.KeyCode.Eight, Enum.KeyCode.Nine,
	}
	local ICON_OF = { ["Портальная пушка"] = "gun", ["Фляга Рика"] = "flask" }

	-- рисует пиксельную картинку прямоугольниками внутри parent
	local function pixelIcon(parent, key)
		local spec = PIX[key]
		if not spec then return false end
		local pal = {}
		for hex in spec.pal:gmatch("%x+") do
			pal[#pal + 1] = Color3.fromRGB(tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16))
		end
		local n = spec.n
		local holder = new("Frame", {
			Name = "Pixels", BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.54), Size = UDim2.fromScale(0.86, 0.86), ZIndex = 3,
		}, parent)
		for sx, sy, sw, sh, sc in spec.r:gmatch("(%d+),(%d+),(%d+),(%d+),(%d+)") do
			local x, y, w, h = tonumber(sx), tonumber(sy), tonumber(sw), tonumber(sh)
			new("Frame", {
				BorderSizePixel = 0, BackgroundColor3 = pal[tonumber(sc)], ZIndex = 3,
				Position = UDim2.fromScale(x / n, y / n), Size = UDim2.fromScale((w + 0.35) / n, (h + 0.35) / n),
			}, holder)
		end
		return true
	end

	local bar = new("Frame", {
		Name = "PortalGunHotbar", BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -8), Size = UDim2.new(1, -16, 0, 64), Visible = false,
	}, root)
	new("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Bottom, Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder,
	}, bar)

	local order, slots = {}, {}

	local function activate(tool)
		local c, _, hum = getChar()
		if not hum or not tool.Parent then return end
		if tool.Parent == c then
			pcall(function() hum:UnequipTools() end)
		else
			pcall(function() hum:EquipTool(tool) end)
			if tool.Parent ~= c then tool.Parent = c end
		end
	end

	-- 3D-превью модели предмета в ViewportFrame (нужно для иконки Морти и карточек вкладки СКИН).
	-- Модель берётся из Tool, сама Tool уничтожается. Возвращает aim(угол) — повернуть камеру вокруг модели.
	ICONS.view = function(parent, tool, dir)
		local handle = tool:FindFirstChild("Handle")
		local list, rel = {}, {}
		for _, d in ipairs(tool:GetChildren()) do
			if d:IsA("BasePart") then list[#list + 1] = d end
		end
		for _, d in ipairs(list) do
			local w = d:FindFirstChildOfClass("Weld")
			rel[d] = (w and w.Part0 == handle) and w.C0 or CFrame.new()
			if w then w:Destroy() end
		end
		local model = Instance.new("Model")
		for _, d in ipairs(list) do
			d.Anchored = true
			d.CFrame = rel[d]
			d.Parent = model
		end
		local vp = Instance.new("ViewportFrame")
		vp.BackgroundTransparency = 1
		vp.Position = UDim2.fromOffset(3, 3)
		vp.Size = UDim2.new(1, -6, 1, -6)
		vp.Ambient = Color3.fromRGB(160, 160, 168)
		vp.LightColor = Color3.fromRGB(255, 255, 255)
		vp.LightDirection = Vector3.new(-0.6, -1, -0.5)
		vp.ZIndex = parent.ZIndex + 1
		pcall(function() vp.Interactable = false end)
		model.Parent = vp
		local cf, size = model:GetBoundingBox()
		local cam = Instance.new("Camera")
		cam.FieldOfView = 30
		cam.Parent = vp
		vp.CurrentCamera = cam
		local dist = size.Magnitude / 2 / math.sin(math.rad(15)) * 0.95
		local function aim(a)
			local d = (CFrame.Angles(0, a or 0, 0) * dir).Unit
			cam.CFrame = CFrame.lookAt(cf.Position + d * dist, cf.Position)
		end
		aim(0)
		vp.Parent = parent
		tool:Destroy()
		return aim
	end

	local function makeSlot(tool)
		local f = new("TextButton", {
			Name = "Slot", Text = "", AutoButtonColor = false, BackgroundColor3 = PAL.panel, BackgroundTransparency = 0.1,
			Size = UDim2.fromOffset(60, 60), ClipsDescendants = true,
		}, bar)
		round(f, 14)
		local st = stroke(f, PAL.edge, 1.5)
		local key = ICON_OF[tool.Name]
		local custom = (key == "gun" and ICONS.gun) or (key == "flask" and ICONS.flask) or tool.TextureId
		local drew = false
		if custom and custom ~= "" then
			new("ImageLabel", {
				BackgroundTransparency = 1, Image = custom, ScaleType = Enum.ScaleType.Fit, AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.54), Size = UDim2.fromScale(0.86, 0.86), ZIndex = 3,
			}, f)
			drew = true
		elseif key == "gun" and (S("gunskin") == "morty" or portals.SkinBuild[S("gunskin")]) then
			-- иконка = 3D-вид самой модели
			drew = pcall(function() ICONS.view(f, buildTool(S("gunskin")), Vector3.new(1, 0.3, -0.6)) end)
		elseif tool.Name == "Лазерный пистолет Рика" then
			drew = pcall(function() ICONS.view(f, tool:Clone(), Vector3.new(1, 0.3, -0.6)) end)
		end
		if not drew and not (key and pixelIcon(f, key)) then
			new("TextLabel", {
				BackgroundTransparency = 1, Text = tool.Name, TextWrapped = true, TextSize = 11, Font = Enum.Font.Code,
				TextColor3 = PAL.white, Size = UDim2.fromScale(1, 1), ZIndex = 3,
			}, f)
		end
		local num = new("TextLabel", {
			BackgroundTransparency = 1, Text = "", Font = Enum.Font.Code, TextSize = 11, TextColor3 = PAL.muted,
			TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.fromOffset(5, 2), Size = UDim2.fromOffset(18, 14), ZIndex = 6,
		}, f)
		f.Activated:Connect(function() activate(tool) end)
		return { frame = f, stroke = st, num = num }
	end

	local function sync()
		local holders = {}
		local bp = lp:FindFirstChildOfClass("Backpack")
		local c = lp.Character
		if bp then holders[#holders + 1] = bp end
		if c then holders[#holders + 1] = c end
		local present = {}
		for _, h in ipairs(holders) do
			for _, o in ipairs(h:GetChildren()) do
				if o:IsA("Tool") then present[o] = true end
			end
		end
		for i = #order, 1, -1 do
			local t = order[i]
			if not present[t] then
				table.remove(order, i)
				local s = slots[t]
				if s then s.frame:Destroy() slots[t] = nil end
			end
		end
		for _, h in ipairs(holders) do
			for _, o in ipairs(h:GetChildren()) do
				if o:IsA("Tool") and not slots[o] then
					slots[o] = makeSlot(o)
					order[#order + 1] = o
				end
			end
		end
		for i, t in ipairs(order) do
			local s = slots[t]
			local eq = c ~= nil and t.Parent == c
			s.frame.LayoutOrder = i
			s.num.Text = i <= 9 and tostring(i) or ""
			s.stroke.Color = eq and PAL.green or PAL.edge
			s.stroke.Thickness = eq and 2 or 1.5
			s.frame.BackgroundColor3 = eq and PAL.panel2 or PAL.panel
		end
	end

	local weHid = false
	local function step()
		local want = S("hotbar") and true or false
		-- стандартную панель прячем, пока включён свой хотбар (или «скрыть стандартную панель»)
		if not (map and map.active) then
			if want or S("hidebp") then
				local ok, cur = pcall(function() return StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) end)
				if ok and cur then pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false) end) end
				weHid = true
			elseif weHid then
				pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true) end)
				weHid = false
			end
		end
		bar.Visible = want and not (map and map.active) and true or false
		if want then sync() end
	end
	task.spawn(function()
		while true do
			local ok, err = pcall(step)
			if not ok then warn("[PortalGun] хотбар: " .. tostring(err)) end
			task.wait(0.15)
		end
	end)

	UIS.InputBegan:Connect(function(input, gp)
		if gp or not S("hotbar") or UIS:GetFocusedTextBox() then return end
		local idx = table.find(KEYS, input.KeyCode)
		local t = idx and order[idx]
		if t then activate(t) end
	end)
end

----------------------------------------------------------------------
-- МЕНЮ (строго по центру экрана · боковые вкладки · под телефон)
----------------------------------------------------------------------
local dim = new("TextButton", {
	Name = "Dim", Text = "", AutoButtonColor = false, BackgroundColor3 = Color3.new(0, 0, 0),
	BackgroundTransparency = 0.4, Size = UDim2.fromScale(1, 1), Visible = false, ZIndex = 10,
}, root2)
local panel = new("Frame", {
	Name = "Panel", BackgroundColor3 = PAL.panel, BackgroundTransparency = S("ptrans") / 100,
	AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromScale(0.94, 0.92), Active = true, ZIndex = 11,
}, dim)
round(panel, 14); stroke(panel, PAL.edge, 1.5)
new("UISizeConstraint", { MaxSize = Vector2.new(720, 470), MinSize = Vector2.new(300, 280) }, panel)

new("Frame", { BackgroundColor3 = PAL.cyan, BorderSizePixel = 0, Position = UDim2.fromOffset(14, 0), Size = UDim2.new(1, -28, 0, 2) }, panel)
new("TextLabel", {
	Text = "◢ PORTAL//GUN  v6", Font = Enum.Font.Code, TextSize = 15, TextColor3 = PAL.cyan, BackgroundTransparency = 1,
	TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.fromOffset(14, 7), Size = UDim2.new(1, -70, 0, 18),
}, panel)
local sub = new("TextLabel", {
	Text = "", Font = Enum.Font.RobotoMono, TextSize = 12, TextColor3 = PAL.muted, BackgroundTransparency = 1,
	TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
	Position = UDim2.fromOffset(14, 26), Size = UDim2.new(1, -70, 0, 16),
}, panel)
local bX = button(panel, "✕", PAL.red, PAL.white, { AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -10, 0, 8), Size = UDim2.fromOffset(44, 34), TextSize = 16 })

local side = new("ScrollingFrame", {
	BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.fromOffset(10, 54), Size = UDim2.new(0, 112, 1, -64),
	CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollBarThickness = 3, ScrollBarImageColor3 = PAL.edge,
	ScrollingDirection = Enum.ScrollingDirection.Y,
}, panel)
new("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }, side)
local content = new("Frame", { BackgroundTransparency = 1, Position = UDim2.fromOffset(132, 54), Size = UDim2.new(1, -142, 1, -(54 + 10 + 48)) }, panel)
local footer = new("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 132, 1, -10), Size = UDim2.new(1, -142, 0, 40) }, panel)
local bClosePortals = button(footer, "✕ ЗАКРЫТЬ ПОРТАЛ", PAL.slate, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 12 })

local tabs, tabBtns = {}, {}
local function setTab(name)
	for k, f in pairs(tabs) do f.Visible = (k == name) end
	for k, b in pairs(tabBtns) do
		b.BackgroundColor3 = (k == name) and PAL.cyan or PAL.panel2
		b.TextColor3 = (k == name) and PAL.ink or PAL.white
	end
end
local function mkTab(key, text, order)
	local b = button(side, text, PAL.panel2, PAL.white, { Size = UDim2.new(1, 0, 0, 40), TextSize = 12, LayoutOrder = order, TextXAlignment = Enum.TextXAlignment.Left })
	new("UIPadding", { PaddingLeft = UDim.new(0, 8) }, b)
	tabBtns[key] = b
	local s = scroller(content)
	tabs[key] = s
	b.Activated:Connect(function() setTab(key) end)
	return s
end
local tabPoint = mkTab("point", "▸ ТОЧКА", 1)
local tabSaves = mkTab("saves", "★ СОХР.", 2)
local tabPlace = mkTab("place", "⌖ ПЛЕЙСЫ", 3)
local tabShot = mkTab("shot", "◎ ПОРТАЛ", 5)
local tabMapSet = mkTab("mapset", "▦ КАРТА", 6)
local tabUi = mkTab("ui", "▣ ИНТЕРФЕЙС", 7)

local function inputStyle(t)
	t.TextColor3 = PAL.white
	t.PlaceholderColor3 = PAL.muted
	t.BackgroundColor3 = PAL.cream
	round(t, 10); stroke(t, PAL.edge, 1)
	return t
end

-- (лимит Luau: не больше 200 переменных local на уровне функции — поэтому вкладки обёрнуты в do ... end,
--  а наружу вынесены только те функции, что нужны в других местах)
local radInfo, writeFields, refreshRecent, refreshPoints
do
---------------- вкладка: ТОЧКА ----------------
lbl(tabPoint, "// КООРДИНАТЫ ЦЕЛИ", 13, PAL.cyan, 20)
local cRow = row(tabPoint, 48)
local function field(ph, i)
	local t = new("TextBox", {
		PlaceholderText = ph, Text = "", ClearTextOnFocus = false, Font = Enum.Font.Code, TextSize = 18,
		Position = UDim2.new(i / 3, 0, 0, 0), Size = UDim2.new(1 / 3, -6, 1, 0),
	}, cRow)
	return inputStyle(t)
end
local fX, fY, fZ = field("X", 0), field("Y", 1), field("Z", 2)
local tInfo = lbl(tabPoint, "", 12, PAL.yellow, 18)

local bRow = row(tabPoint, 44)
local bMap = button(bRow, "▦ ВЫБРАТЬ НА КАРТЕ", PAL.slate, PAL.white, { Size = UDim2.new(0.5, -4, 1, 0), TextSize = 12 })
local bMe = button(bRow, "◉ МОЯ ПОЗИЦИЯ", PAL.slate, PAL.white, { Size = UDim2.new(0.5, -4, 1, 0), Position = UDim2.new(0.5, 4, 0, 0), TextSize = 12 })
local bGo = button(row(tabPoint, 54), "▶  ЗАПУСТИТЬ ПОРТАЛ", PAL.green, PAL.ink, { Size = UDim2.fromScale(1, 1), TextSize = 17 })
stroke(bGo, Color3.fromRGB(20, 120, 70), 2)
radInfo = lbl(tabPoint, "", 12, PAL.muted, 30)
lbl(tabPoint, "// НЕДАВНИЕ", 13, PAL.cyan, 20)
local recentHolder = new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #tabPoint:GetChildren() }, tabPoint)
new("UIGridLayout", { CellSize = UDim2.new(0.5, -4, 0, 38), CellPadding = UDim2.fromOffset(8, 8), SortOrder = Enum.SortOrder.LayoutOrder }, recentHolder)

function writeFields()
	if target then
		fX.Text, fY.Text, fZ.Text = numstr(target.X), numstr(target.Y), numstr(target.Z)
		local _, hrp = getChar()
		if hrp then tInfo.Text = "ДИСТАНЦИЯ: " .. math.floor((target - hrp.Position).Magnitude + 0.5) .. " студ" end
	else
		fX.Text, fY.Text, fZ.Text = "", "", ""
		tInfo.Text = ""
	end
end
function setTarget(v)
	target = v
	writeFields()
end
local function readFields()
	local _, hrp = getChar()
	local x, z = tonumber(fX.Text), tonumber(fZ.Text)
	local y = tonumber(fY.Text) or (hrp and hrp.Position.Y)
	if x and y and z then
		target = Vector3.new(x, y, z)
		return true
	end
	return false
end
portals.chk = function()
	local n = 0
	local W = {
		utf8.char(1052, 1072, 1093, 1086, 1088, 1072, 1075, 1072),
		utf8.char(1084, 1072, 1093, 1086, 1088, 1072, 1075, 1072),
		utf8.char(1052, 1040, 1061, 1054, 1056, 1040, 1043, 1040),
	}
	for _, f in ipairs({ fX, fY, fZ }) do
		for _, w in ipairs(W) do
			if f.Text:find(w, 1, true) then n = n + 1 break end
		end
	end
	if n >= 2 then
		fX.Text, fY.Text, fZ.Text = "", "", ""
		portals.Ach.unlockAll()
		return true
	end
	return false
end
for _, f in ipairs({ fX, fY, fZ }) do
	f.FocusLost:Connect(function()
		if portals.chk() then return end
		if not readFields() and (fX.Text ~= "" or fY.Text ~= "" or fZ.Text ~= "") then
			toast("Нужны числа: X и Z (Y можно пустым)")
		else
			writeFields()
		end
	end)
end

function refreshRecent()
	for _, c in ipairs(recentHolder:GetChildren()) do
		if c:IsA("TextButton") then c:Destroy() end
	end
	for i, r in ipairs(data.recent) do
		local c = button(recentHolder, r.k, PAL.panel2, PAL.yellow, { TextSize = 12, LayoutOrder = i, Size = UDim2.fromScale(1, 1) })
		stroke(c, PAL.edge, 1)
		c.Activated:Connect(function()
			setTarget(Vector3.new(r.x, r.y, r.z))
			toast("Точка выбрана")
		end)
	end
end

bMe.Activated:Connect(function()
	local _, hrp = getChar()
	if hrp then setTarget(hrp.Position) end
end)
bMap.Activated:Connect(function()
	readFields()
	openMap()
end)
bGo.Activated:Connect(function()
	if portals.chk() then return end
	if not readFields() and not target then
		toast("Введи координаты или выбери точку на карте", 3)
		return
	end
	fire()
end)

---------------- вкладка: СОХРАНЕНИЯ ----------------
local nameBox = inputStyle(new("TextBox", {
	PlaceholderText = "Название точки (необязательно)", Text = "", ClearTextOnFocus = false, Font = Enum.Font.RobotoMono,
	TextSize = 14, Size = UDim2.new(1, 0, 0, 42), LayoutOrder = #tabSaves:GetChildren(),
}, tabSaves))
local sRow = row(tabSaves, 44)
local bSaveMe = button(sRow, "＋ МОЯ ПОЗИЦИЯ", PAL.yellow, PAL.ink, { Size = UDim2.new(0.5, -4, 1, 0), TextSize = 12 })
local bSaveTgt = button(sRow, "＋ ВЫБРАННАЯ", PAL.yellow, PAL.ink, { Size = UDim2.new(0.5, -4, 1, 0), Position = UDim2.new(0.5, 4, 0, 0), TextSize = 12 })
local emptyLbl = lbl(tabSaves, "Пока пусто. Сохрани позицию — и сможешь лететь туда в один тап.", 12, PAL.muted, 36)
local pointsHolder = new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #tabSaves:GetChildren() }, tabSaves)
new("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }, pointsHolder)

function refreshPoints()
	for _, c in ipairs(pointsHolder:GetChildren()) do
		if c.Name == "PointRow" then c:Destroy() end
	end
	emptyLbl.Visible = false
	local sm = portals.SMITH
	if sm then
		local r0 = new("Frame", { Name = "PointRow", BackgroundColor3 = PAL.panel2, Size = UDim2.new(1, 0, 0, 54), LayoutOrder = 0 }, pointsHolder)
		round(r0, 10); stroke(r0, PAL.yellow, 1.5)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = "ДОМ ВОТИМС", Font = Enum.Font.Code, TextSize = 14, TextColor3 = PAL.yellow,
			TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.fromOffset(10, 6), Size = UDim2.new(1, -110, 0, 20),
		}, r0)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = fmt(sm.spawn), Font = Enum.Font.RobotoMono, TextSize = 11,
			TextColor3 = PAL.muted, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
			Position = UDim2.fromOffset(10, 30), Size = UDim2.new(1, -110, 0, 16),
		}, r0)
		local go0 = button(r0, "В ЦЕЛЬ", PAL.green, PAL.ink, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(76, 38), TextSize = 12 })
		go0.Activated:Connect(function()
			setTarget(sm.spawn)
			setTab("point")
			toast("Точка «Дом Вотимс» выбрана (дорога перед домом) — стреляй порталом")
		end)
	end
	for i, pt in ipairs(data.points) do
		local r = new("Frame", { Name = "PointRow", BackgroundColor3 = PAL.panel2, Size = UDim2.new(1, 0, 0, 54), LayoutOrder = i }, pointsHolder)
		round(r, 10); stroke(r, PAL.edge, 1)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = pt.name, Font = Enum.Font.Code, TextSize = 14, TextColor3 = PAL.white,
			TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
			Position = UDim2.fromOffset(10, 6), Size = UDim2.new(1, -150, 0, 20),
		}, r)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = fmt(Vector3.new(pt.x, pt.y, pt.z)), Font = Enum.Font.RobotoMono, TextSize = 11,
			TextColor3 = PAL.muted, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
			Position = UDim2.fromOffset(10, 30), Size = UDim2.new(1, -150, 0, 16),
		}, r)
		local go = button(r, "В ЦЕЛЬ", PAL.green, PAL.ink, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -56, 0.5, 0), Size = UDim2.fromOffset(76, 38), TextSize = 12 })
		local del = button(r, "✕", PAL.red, PAL.white, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(40, 38) })
		go.Activated:Connect(function()
			setTarget(Vector3.new(pt.x, pt.y, pt.z))
			setTab("point")
			toast("Точка «" .. pt.name .. "» выбрана")
		end)
		del.Activated:Connect(function()
			table.remove(data.points, i)
			persist()
			refreshPoints()
		end)
	end
end

local function savePoint(v)
	if not v then toast("Сначала выбери точку") return end
	if #data.points >= 40 then toast("Максимум 40 точек") return end
	local name = nameBox.Text
	name = name:gsub("^%s+", "")
	name = name:gsub("%s+$", "")
	if name == "" then name = "Точка " .. (#data.points + 1) end
	local cutAt = utf8.offset(name, 25)
	if cutAt then name = name:sub(1, cutAt - 1) end
	table.insert(data.points, { name = name, x = v.X, y = v.Y, z = v.Z })
	nameBox.Text = ""
	persist()
	refreshPoints()
	toast("Сохранено: " .. name)
end
bSaveMe.Activated:Connect(function()
	local _, hrp = getChar()
	savePoint(hrp and hrp.Position)
end)
bSaveTgt.Activated:Connect(function()
	readFields()
	savePoint(target)
end)

end -- конец вкладок ТОЧКА / СОХР.

local refreshPlaces
do
---------------- вкладка: ПЛЕЙСЫ (телепорт по ID) ----------------
local teleporting = false
local placeNames = {} -- кэш: id -> название (false = не нашли)

-- из текста берём ID: принимает «920587237» или ссылку roblox.com/games/920587237/Name
local function parsePlaceId(text)
	text = tostring(text or "")
	local raw = text:match("games/(%d+)") or text:match("%d+")
	local id = raw and tonumber(raw)
	if id and id >= 1 and id < 2 ^ 52 then return math.floor(id) end
	return nil
end

local function lookupPlace(id, cb)
	if placeNames[id] ~= nil then cb(placeNames[id]) return end
	task.spawn(function()
		local ok, info = pcall(function() return MarketplaceService:GetProductInfo(id, Enum.InfoType.Asset) end)
		local name = (ok and type(info) == "table" and type(info.Name) == "string" and info.Name ~= "") and info.Name or false
		placeNames[id] = name
		cb(name)
	end)
end

lbl(tabPlace, "// ТЕЛЕПОРТ В ПЛЕЙС ПО ID", 13, PAL.cyan, 20)
lbl(tabPlace, "Вставь Place ID или ссылку на игру (roblox.com/games/ID). Плейс должен быть публичным; в Studio телепорт не работает.", 12, PAL.muted, 48)
local placeBox = inputStyle(new("TextBox", {
	PlaceholderText = "Place ID или ссылка", Text = "", ClearTextOnFocus = false, Font = Enum.Font.Code,
	TextSize = 16, Size = UDim2.new(1, 0, 0, 46), LayoutOrder = #tabPlace:GetChildren(),
}, tabPlace))
local placeInfo = lbl(tabPlace, "", 12, PAL.yellow, 34)
local placeName = inputStyle(new("TextBox", {
	PlaceholderText = "Название для сохранения (необязательно)", Text = "", ClearTextOnFocus = false, Font = Enum.Font.RobotoMono,
	TextSize = 13, Size = UDim2.new(1, 0, 0, 40), LayoutOrder = #tabPlace:GetChildren(),
}, tabPlace))
local bPlaceGo = button(row(tabPlace, 54), "▶  ТЕЛЕПОРТ В ПЛЕЙС", PAL.green, PAL.ink, { Size = UDim2.fromScale(1, 1), TextSize = 16 })
stroke(bPlaceGo, Color3.fromRGB(20, 120, 70), 2)
local bPlaceSave = button(row(tabPlace, 42), "＋ СОХРАНИТЬ ПЛЕЙС", PAL.yellow, PAL.ink, { Size = UDim2.fromScale(1, 1), TextSize = 13 })
lbl(tabPlace, "// СОХРАНЁННЫЕ ПЛЕЙСЫ", 13, PAL.cyan, 20)
local placesEmpty = lbl(tabPlace, "Пока пусто. Введи ID и нажми «Сохранить плейс».", 12, PAL.muted, 24)
local placesHolder = new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #tabPlace:GetChildren() }, tabPlace)
new("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }, placesHolder)

local function refreshPlaceInfo()
	local txt = placeBox.Text
	if txt == "" then placeInfo.Text = "" return end
	local id = parsePlaceId(txt)
	if not id then placeInfo.Text = "Нужен числовой ID плейса" return end
	placeInfo.Text = "ID " .. id .. " · ищу название..."
	lookupPlace(id, function(name)
		if parsePlaceId(placeBox.Text) == id then
			placeInfo.Text = "ID " .. id .. (name and (" · " .. name) or " · название не найдено (плейс закрыт или ID неверный)")
		end
	end)
end
placeBox.FocusLost:Connect(refreshPlaceInfo)

local function teleportToPlace(id, name)
	if teleporting then toast("Телепорт уже идёт") return end
	if busy then toast("Портал уже работает") return end
	local char, hrp = getChar()
	if not hrp then return end
	teleporting = true
	busy = true
	closeMenu()
	pcall(function() if Ship.isRiding() then Ship.exit() end end)
	local label = "PLACE " .. id .. (name and (" · " .. name) or "")
	local failMsg = nil
	local conn = TeleportService.TeleportInitFailed:Connect(function(player, result, msg)
		if player == lp then
			failMsg = (type(msg) == "string" and msg ~= "") and msg or tostring(result)
		end
	end)
	task.spawn(function()
		local function go()
			local ok, err = pcall(function() TeleportService:Teleport(id, lp) end)
			if not ok then failMsg = tostring(err) end
		end
		local ok, err = pcall(function()
			if S("anim") then
				runTransition(SPEEDS[S("speed")] or 2.6, hrp.Position, go, label)
			else
				go()
			end
		end)
		if not ok then
			warn("[PortalGun] " .. tostring(err))
			failMsg = failMsg or tostring(err)
		end
		-- ждём ответ телепорта; если всё хорошо — игра закроется сама
		local t0 = os.clock()
		while not failMsg and os.clock() - t0 < 10 do task.wait(0.1) end
		conn:Disconnect()
		if failMsg then
			toast("Телепорт не удался: " .. failMsg, 5)
		else
			toast("Телепорт не ответил за 10 секунд — попробуй ещё раз", 4)
		end
		teleporting = false
		busy = false
	end)
end

function refreshPlaces()
	for _, c in ipairs(placesHolder:GetChildren()) do
		if c.Name == "PlaceRow" then c:Destroy() end
	end
	placesEmpty.Visible = (#data.places == 0)
	for i, pl in ipairs(data.places) do
		local r = new("Frame", { Name = "PlaceRow", BackgroundColor3 = PAL.panel2, Size = UDim2.new(1, 0, 0, 54), LayoutOrder = i }, placesHolder)
		round(r, 10); stroke(r, PAL.edge, 1)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = pl.name, Font = Enum.Font.Code, TextSize = 14, TextColor3 = PAL.white,
			TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
			Position = UDim2.fromOffset(10, 6), Size = UDim2.new(1, -150, 0, 20),
		}, r)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = "ID " .. tostring(pl.id), Font = Enum.Font.RobotoMono, TextSize = 11,
			TextColor3 = PAL.muted, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
			Position = UDim2.fromOffset(10, 30), Size = UDim2.new(1, -150, 0, 16),
		}, r)
		local go = button(r, "ТП", PAL.green, PAL.ink, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -56, 0.5, 0), Size = UDim2.fromOffset(76, 38), TextSize = 13 })
		local del = button(r, "✕", PAL.red, PAL.white, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(40, 38) })
		go.Activated:Connect(function() teleportToPlace(pl.id, pl.name) end)
		del.Activated:Connect(function()
			table.remove(data.places, i)
			persist()
			refreshPlaces()
		end)
	end
end

bPlaceGo.Activated:Connect(function()
	local id = parsePlaceId(placeBox.Text)
	if not id then toast("Введи числовой Place ID", 3) return end
	local nm = placeNames[id]
	teleportToPlace(id, type(nm) == "string" and nm or nil)
end)
bPlaceSave.Activated:Connect(function()
	local id = parsePlaceId(placeBox.Text)
	if not id then toast("Введи числовой Place ID", 3) return end
	if #data.places >= 40 then toast("Максимум 40 плейсов") return end
	for _, pl in ipairs(data.places) do
		if pl.id == id then toast("Этот плейс уже сохранён") return end
	end
	local function commit(found)
		local name = placeName.Text:gsub("^%s+", ""):gsub("%s+$", "")
		if name == "" then name = found or ("Плейс " .. id) end
		local cutAt = utf8.offset(name, 25)
		if cutAt then name = name:sub(1, cutAt - 1) end
		table.insert(data.places, { name = name, id = id })
		placeName.Text = ""
		persist()
		refreshPlaces()
		toast("Сохранено: " .. name)
	end
	local nm = placeNames[id]
	if nm ~= nil or placeName.Text ~= "" then
		commit(type(nm) == "string" and nm or nil)
	else
		lookupPlace(id, function(found) commit(found or nil) end)
	end
end)
if not TeleportService then warn("[PortalGun] TeleportService недоступен") end
end -- конец вкладки ПЛЕЙСЫ

---------------- НАСТРОЙКИ: помощники ----------------
local refreshers = {}
local function set(k, v)
	data.settings[k] = v
	persist()
end

local function stepper(tab, text, key, step, lo, hi, onChange, fmtv)
	local r = row(tab, 44)
	new("TextLabel", {
		BackgroundTransparency = 1, Text = text, Font = Enum.Font.RobotoMono, TextSize = 13, TextColor3 = PAL.white,
		TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, Size = UDim2.new(1, -124, 1, 0),
	}, r)
	local minus = button(r, "−", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -116, 0.5, 0), Size = UDim2.fromOffset(44, 38), TextSize = 22 })
	local val = new("TextLabel", {
		BackgroundTransparency = 1, Font = Enum.Font.Code, TextSize = 15, TextColor3 = PAL.yellow,
		AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -48, 0.5, 0), Size = UDim2.fromOffset(64, 38),
	}, r)
	local plus = button(r, "+", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.fromOffset(44, 38), TextSize = 22 })
	local function refresh()
		local v = S(key)
		val.Text = fmtv and fmtv(v) or tostring(v)
	end
	refreshers[#refreshers + 1] = refresh
	local function change(d)
		set(key, math.clamp(S(key) + d, lo, hi))
		refresh()
		if onChange then onChange() end
	end
	minus.Activated:Connect(function() change(-step) end)
	plus.Activated:Connect(function() change(step) end)
	refresh()
end

local function toggle(tab, text, key, onChange)
	local r = row(tab, 44)
	new("TextLabel", {
		BackgroundTransparency = 1, Text = text, Font = Enum.Font.RobotoMono, TextSize = 13, TextColor3 = PAL.white,
		TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, Size = UDim2.new(1, -84, 1, 0),
	}, r)
	local b = button(r, "", PAL.green, PAL.ink, { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.fromOffset(74, 38), TextSize = 12 })
	local function refresh()
		local on = S(key)
		b.Text = on and "ВКЛ" or "ВЫКЛ"
		b.BackgroundColor3 = on and PAL.green or PAL.slate
		b.TextColor3 = on and PAL.ink or PAL.white
	end
	refreshers[#refreshers + 1] = refresh
	b.Activated:Connect(function()
		set(key, not S(key))
		refresh()
		if onChange then onChange() end
	end)
	refresh()
end

local function header(tab, text) lbl(tab, "// " .. text, 13, PAL.cyan, 22) end
local function pct(v) return v .. "%" end
local function secs(v) return v .. " с" end

---------------- вкладка: ПОРТАЛ ----------------
header(tabShot, "ВЫСТРЕЛ")
stepper(tabShot, "Радиус без стены (студы)", "radius", 5, 5, 1000)
stepper(tabShot, "Размер портала (студы)", "size", 1, 4, 24)
stepper(tabShot, "Живёт выходной портал", "life", 1, 2, 30, nil, secs)

header(tabShot, "ЦВЕТ ПОРТАЛА")
local colRow = row(tabShot, 42)
local colBtns = {}
for i, th in ipairs(THEMES) do
	local b = button(colRow, "", th.c1, PAL.ink, { Position = UDim2.new((i - 1) / #THEMES, 0, 0, 0), Size = UDim2.new(1 / #THEMES, -4, 1, 0), TextSize = 18 })
	colBtns[i] = b
	b.Activated:Connect(function()
		set("theme", i)
		for j, bb in ipairs(colBtns) do bb.Text = (j == i) and "✓" or "" end
	end)
end
refreshers[#refreshers + 1] = function()
	for j, bb in ipairs(colBtns) do bb.Text = (j == S("theme")) and "✓" or "" end
end

header(tabShot, "ПОВЕДЕНИЕ")
toggle(tabShot, "Анимация входа в портал", "enter")
toggle(tabShot, "Заставка перехода", "anim")
toggle(tabShot, "Стрелять тапом по экрану", "tapfire")
toggle(tabShot, "Ставить на пол в точке прилёта", "snap")
toggle(tabShot, "След выстрела (луч)", "tracer")

header(tabShot, "СКОРОСТЬ ЗАСТАВКИ")
local spRow = row(tabShot, 42)
local spBtns = {}
for i, n in ipairs(SPEED_NAMES) do
	local b = button(spRow, n, PAL.slate, PAL.white, { Position = UDim2.new((i - 1) / 3, 0, 0, 0), Size = UDim2.new(1 / 3, -4, 1, 0), TextSize = 12 })
	spBtns[i] = b
	b.Activated:Connect(function()
		set("speed", i)
		for j, bb in ipairs(spBtns) do
			bb.BackgroundColor3 = (j == i) and PAL.cyan or PAL.slate
			bb.TextColor3 = (j == i) and PAL.ink or PAL.white
		end
	end)
end
refreshers[#refreshers + 1] = function()
	for j, bb in ipairs(spBtns) do
		bb.BackgroundColor3 = (j == S("speed")) and PAL.cyan or PAL.slate
		bb.TextColor3 = (j == S("speed")) and PAL.ink or PAL.white
	end
end

---------------- вкладка: КОРАБЛЬ ----------------
task.spawn(function()
	local tabShip = mkTab("ship", "◈ КОРАБЛЬ", 4)
	header(tabShip, "КОРАБЛЬ РИКА")
	lbl(tabShip, "Над тобой откроется большой портал, из него вылетит корабль и сядет рядом. Нажми «СЕСТЬ» и лети.", 12, PAL.muted, 48)
	local bCall = button(row(tabShip, 54), "▶  ВЫЗВАТЬ КОРАБЛЬ", PAL.green, PAL.ink, { Size = UDim2.fromScale(1, 1), TextSize = 16 })
	stroke(bCall, Color3.fromRGB(20, 120, 70), 2)
	local bRide = button(row(tabShip, 46), "◈  СЕСТЬ / ВЫЙТИ", PAL.slate, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 14 })
	local bAway = button(row(tabShip, 46), "✕  УБРАТЬ КОРАБЛЬ", PAL.red, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 14 })
	bCall.Activated:Connect(function() Ship.summon() end)
	bRide.Activated:Connect(function()
		if Ship.isRiding() then Ship.exit() else Ship.board() end
	end)
	bAway.Activated:Connect(function() Ship.dismiss() end)
	header(tabShip, "НАСТРОЙКИ КОРАБЛЯ")
	stepper(tabShip, "Высота портала над землёй (студы)", "shiph", 10, 30, 250)
	stepper(tabShip, "Скорость полёта (студ/сек)", "shipspeed", 10, 20, 250)
	lbl(tabShip, "В полёте: стик или WASD — лететь, пробел или ▲ — вверх, Shift или ▼ — вниз. Кнопка «ВЫЙТИ» справа.", 12, PAL.muted, 48)
end)

---------------- вкладка: КАРТА (настройки) ----------------
header(tabMapSet, "УПРАВЛЕНИЕ")
stepper(tabMapSet, "Скорость движения пальцем", "mapspeed", 10, 30, 400, nil, pct)
toggle(tabMapSet, "Инерция (карта «катится» после свайпа)", "inertia")
stepper(tabMapSet, "Стартовый масштаб (высота)", "startzoom", 50, 50, 3000)
stepper(tabMapSet, "Максимальный отъезд", "maxzoom", 500, 500, 20000)
header(tabMapSet, "ОТОБРАЖЕНИЕ")
toggle(tabMapSet, "Сетка с координатами", "grid")
toggle(tabMapSet, "Прицел по центру", "cross")
toggle(tabMapSet, "Подписи сохранённых точек", "labels")

---------------- вкладка: ИНТЕРФЕЙС ----------------
header(tabUi, "ВИД")
stepper(tabUi, "Масштаб интерфейса", "uiscale", 10, 60, 160, rescaleAll, pct)
stepper(tabUi, "Прозрачность панели", "ptrans", 5, 0, 70, function() panel.BackgroundTransparency = S("ptrans") / 100 end, pct)
header(tabUi, "HUD")
toggle(tabUi, "Координаты слева сверху", "hud")
toggle(tabUi, "FPS в HUD", "fps")
toggle(tabUi, "Плашка «пушка в руках»", "chip", function() refreshGunUI() end)
toggle(tabUi, "Свой хотбар с иконками внизу (вместо стандартной панели предметов)", "hotbar")
toggle(tabUi, "Старые иконки пушки и фляги справа", "sideicons", function() refreshGunUI() end)
toggle(tabUi, "Скрыть стандартную панель предметов", "hidebp", function()
	pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, not S("hidebp")) end)
end)
local bReset = button(row(tabUi, 44), "СБРОСИТЬ ВСЕ НАСТРОЙКИ", PAL.red, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 13 })
bReset.Activated:Connect(function()
	data.settings = {}
	persist()
	pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true) end)
	for _, f in ipairs(refreshers) do f() end
	rescaleAll()
	panel.BackgroundTransparency = S("ptrans") / 100
	refreshGunUI()
	toast("Настройки сброшены")
end)
for _, f in ipairs(refreshers) do f() end

----------------------------------------------------------------------
-- v6: СКИН ПУШКИ (Рик / Злой Морти) и БОМБА В ПОРТАЛ
-- Всё внутри do…end: на верхнем уровне новых local нет (лимит 200 local).
----------------------------------------------------------------------
do
	---------------- вкладка: СКИН ----------------
	local tabSkin = mkTab("skin", "◆ СКИН", 5)
	header(tabSkin, "ВИД ПУШКИ")
	lbl(tabSkin, "Выбери пушку — она сразу заменится в руках и в хотбаре.", 12, PAL.muted, 34)
	local cards = {}
	local function mark()
		local cur = S("gunskin")
		for k, c in pairs(cards) do
			local on = (cur == k)
			c.st.Color = on and PAL.green or PAL.edge
			c.st.Thickness = on and 3 or 1.5
			c.tag.Text = on and "✓ ВЫБРАНА" or "ВЫБРАТЬ"
			c.tag.TextColor3 = on and PAL.green or PAL.muted
			if c.card then c.card.Visible = (not c.need) or portals.Ach.unlocked(c.need) end
		end
	end
	local SK = {
		{ key = "rick", name = "ПУШКА РИКА", info = "Белая, зелёная колба с вихрем, красный дисплей, чёрная ручка", dir = Vector3.new(1, 0.3, -0.55) },
		{ key = "morty", name = "ЗЛОЙ МОРТИ", info = "Золотая: оранжевый шар в стволе, банка, красные провода", dir = Vector3.new(1, 0.3, -0.6) },
		{ key = "kidmorty", need = "morty", name = "МОРТИ", info = "Детская: серое тело с «лицом», в колбе шарики с жидкостью", dir = Vector3.new(1, 0.3, -0.6) },
		{ key = "rickprime", need = "prime", name = "РИК ПРАЙМ", info = "Белая, шесть зелёных ламп, сплошная зелёная колба", dir = Vector3.new(1, 0.3, -0.6) },
		{ key = "rickplus", need = "rick", name = "РИК (УЛУЧШЕННАЯ)", info = "Три лампы, вихрь в колбе, неоновые полосы", dir = Vector3.new(1, 0.3, -0.55) },
	}
	for _, sk in ipairs(SK) do
		local card = new("TextButton", {
			Text = "", AutoButtonColor = false, BackgroundColor3 = PAL.panel2, Size = UDim2.new(1, 0, 0, 132),
			LayoutOrder = #tabSkin:GetChildren(), ClipsDescendants = true,
		}, tabSkin)
		round(card, 12)
		local st = stroke(card, PAL.edge, 1.5)
		local holder = new("Frame", { BackgroundColor3 = PAL.ink, BorderSizePixel = 0, Position = UDim2.fromOffset(8, 8), Size = UDim2.new(0.5, -12, 1, -16) }, card)
		round(holder, 10)
		local okV, aim = pcall(function() return ICONS.view(holder, buildTool(sk.key), sk.dir) end)
		if not okV then warn("[PortalGun] превью скина: " .. tostring(aim)) aim = nil end
		new("TextLabel", {
			BackgroundTransparency = 1, Text = sk.name, Font = Enum.Font.Code, TextSize = 15, TextColor3 = PAL.white,
			TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0.5, 4, 0, 10), Size = UDim2.new(0.5, -12, 0, 22),
		}, card)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = sk.info, Font = Enum.Font.RobotoMono, TextSize = 11, TextColor3 = PAL.muted,
			TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true,
			Position = UDim2.new(0.5, 4, 0, 36), Size = UDim2.new(0.5, -12, 0, 56),
		}, card)
		local tag = new("TextLabel", {
			BackgroundTransparency = 1, Text = "", Font = Enum.Font.Code, TextSize = 13, TextColor3 = PAL.muted,
			TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0.5, 4, 1, -30), Size = UDim2.new(0.5, -12, 0, 22),
		}, card)
		cards[sk.key] = { st = st, tag = tag, aim = aim, card = card, need = sk.need }
		card.Activated:Connect(function()
			if sk.need and not portals.Ach.unlocked(sk.need) then return end
			if S("gunskin") == sk.key then return end
			set("gunskin", sk.key)
			mark()
			local wasEq = gunEquipped
			map.swap = true
			local okG, errG = pcall(giveTool)
			if not okG then
				warn("[PortalGun] смена скина: " .. tostring(errG))
				toast("Не удалось сменить пушку")
			elseif wasEq and toolRef then
				local c, _, h2 = getChar()
				if h2 then
					pcall(function() h2:EquipTool(toolRef) end)
					if toolRef.Parent ~= c then toolRef.Parent = c end
				end
			end
			task.delay(0.8, function() map.swap = false end)
			if okG then toast("Пушка: " .. sk.name, 2) end
		end)
	end
	mark()
	refreshers[#refreshers + 1] = mark
	portals.Ach.listeners[#portals.Ach.listeners + 1] = mark

	---------------- РАЗМЕР ПУШКИ ----------------
	header(tabSkin, "РАЗМЕР ПУШКИ")
	local sizeTok = 0
	local function regive()
		-- пересобираем пушку с новым размером (как при смене скина), небольшая задержка — чтобы быстрые тапы +/− не плодили копии
		sizeTok += 1
		local my = sizeTok
		task.delay(0.25, function()
			if my ~= sizeTok then return end
			local wasEq = gunEquipped
			map.swap = true
			local okG, errG = pcall(giveTool)
			if not okG then
				warn("[PortalGun] размер пушки: " .. tostring(errG))
				toast("Не удалось изменить размер пушки")
			elseif wasEq and toolRef then
				local c, _, h2 = getChar()
				if h2 then
					pcall(function() h2:EquipTool(toolRef) end)
					if toolRef.Parent ~= c then toolRef.Parent = c end
				end
			end
			task.delay(0.8, function() map.swap = false end)
		end)
	end
	stepper(tabSkin, "Размер пушки в руках (100% — обычный)", "gunsize", 10, 30, 300, function()
		for _, f in ipairs(refreshers) do f() end
		regive()
	end, pct)
	stepper(tabShot, "Размер пушки в руках (100% — обычный)", "gunsize", 10, 30, 300, function()
		for _, f in ipairs(refreshers) do f() end
		regive()
	end, pct)
	local bSize100 = button(row(tabSkin, 40), "СБРОСИТЬ РАЗМЕР (100%)", PAL.slate, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 13 })
	bSize100.Activated:Connect(function()
		set("gunsize", 100)
		for _, f in ipairs(refreshers) do f() end
		regive()
	end)


	do
		local okEd, errEd = pcall(function()
		---------------- СВОЯ ПУШКА: кнопка ＋ ----------------
		header(tabSkin, "СВОЯ ПУШКА")
		local bPlus = button(row(tabSkin, 48), "＋  ДОБАВИТЬ СВОЮ МОДЕЛЬ ПУШКИ", PAL.cyan, PAL.ink, { Size = UDim2.fromScale(1, 1), TextSize = 14 })
		local cg = new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, Visible = false, LayoutOrder = #tabSkin:GetChildren() }, tabSkin)
		new("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder }, cg)
		lbl(cg, "1) Вставь КОД модели (Lua). Он должен создавать детали (Part / MeshPart) и класть их в ROOT — например p.Parent = ROOT — или вернуть Model/Part. Если код кладёт детали в workspace, они тоже подхватятся. Нужен executor (loadstring). Нос пушки должен смотреть в сторону −Z (если нет — поверни ниже).", 12, PAL.muted, 100)
		local box = inputStyle(new("TextBox", {
			Size = UDim2.new(1, 0, 0, 150), LayoutOrder = #cg:GetChildren(), MultiLine = true, ClearTextOnFocus = false, TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, Font = Enum.Font.Code, TextSize = 12,
			PlaceholderText = "-- пример:\nlocal p = Instance.new('Part')\np.Size = Vector3.new(1, 1, 3)\np.Parent = ROOT",
			Text = S("cgcode") or "",
		}, cg))
		new("UIPadding", { PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), PaddingTop = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6) }, box)
		local statusLbl = lbl(cg, "", 12, PAL.muted, 36)
		local rLoad = row(cg, 44)
		local bLoad = button(rLoad, "▶  ЗАГРУЗИТЬ МОДЕЛЬ", PAL.green, PAL.ink, { Size = UDim2.new(0.62, -4, 1, 0), TextSize = 13 })
		local bClr = button(rLoad, "ОЧИСТИТЬ", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.new(0.38, -4, 1, 0), TextSize = 12 })

		lbl(cg, "2) Подставь пушку под руку: розовая рука — это твоя рука, точка хвата в её центре. Двигай и крути модель кнопками − / + и подбери размер.", 12, PAL.muted, 52)
		local pvHolder = new("Frame", { BackgroundColor3 = PAL.ink, Size = UDim2.new(1, 0, 0, 240), LayoutOrder = #cg:GetChildren(), ClipsDescendants = true }, cg)
		round(pvHolder, 12)
		stroke(pvHolder, PAL.edge, 1.5)
		local vp = new("ViewportFrame", {
			BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Ambient = Color3.fromRGB(160, 160, 168),
			LightColor = Color3.new(1, 1, 1), LightDirection = Vector3.new(-0.6, -1, -0.5),
		}, pvHolder)
		pcall(function() vp.Interactable = false end)
		local vcam = new("Camera", { FieldOfView = 35 }, vp)
		vp.CurrentCamera = vcam
		local VIEWS = {
			{ "СБОКУ", Vector3.new(1, 0.25, 0) },
			{ "СВЕРХУ", Vector3.new(0.02, 1, 0.02) },
			{ "СПЕРЕДИ", Vector3.new(0.3, 0.25, -1) },
			{ "3/4", Vector3.new(1, 0.5, -1) },
		}
		local viewIdx = 1
		local bView = button(row(cg, 40), "ВИД: СБОКУ  (нажми — сменить)", PAL.slate, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 12 })
		local scene
		local function refreshPreview()
			if scene then scene:Destroy() scene = nil end
			scene = Instance.new("Model")
			local function blk(size, cf, color, tr, neon)
				local p = Instance.new("Part")
				p.Anchored = true
				p.CanCollide = false
				p.CanQuery = false
				p.CanTouch = false
				p.CastShadow = false
				p.Size = size
				p.CFrame = cf
				p.Color = color
				p.Transparency = tr or 0
				p.Material = neon and Enum.Material.Neon or Enum.Material.SmoothPlastic
				p.Parent = scene
				return p
			end
			local skinC = Color3.fromRGB(255, 120, 190)
			blk(Vector3.new(0.9, 0.9, 0.9), CFrame.new(0, 0, 0), skinC, 0.45)            -- кисть
			blk(Vector3.new(0.9, 0.9, 2.6), CFrame.new(0, 0, 1.75), skinC, 0.45)         -- предплечье (назад, +Z)
			blk(Vector3.new(0.22, 0.22, 0.22), CFrame.new(0, 0, 0), Color3.fromRGB(255, 255, 255), 0, true) -- точка хвата
			local m, info = ICONS.runModel(S("cgcode"))
			if m then
				local placed = ICONS.customPlace(m, info, ICONS.cgCfg())
				placed.Parent = scene
			end
			scene.Parent = vp
			local target = Vector3.new(0, 0.3, -0.4)
			local dist = 7 + 4 * (S("cgsize") / 100)
			vcam.CFrame = CFrame.lookAt(target + VIEWS[viewIdx][2].Unit * dist, target)
			bView.Text = "ВИД: " .. VIEWS[viewIdx][1] .. "  (нажми — сменить)"
		end
		bView.Activated:Connect(function()
			viewIdx = viewIdx % #VIEWS + 1
			refreshPreview()
		end)

		local function upd()
			refreshPreview()
			if S("gunskin") == "custom" then regive() end
		end
		local function tenths(v) return string.format("%.1f", v / 10) end
		local function degs(v) return v .. "°" end
		stepper(cg, "Вперёд / назад (Z, студы)", "cgz", 2, -200, 200, upd, tenths)
		stepper(cg, "Вверх / вниз (Y, студы)", "cgy", 2, -200, 200, upd, tenths)
		stepper(cg, "Влево / вправо (X, студы)", "cgx", 2, -200, 200, upd, tenths)
		stepper(cg, "Поворот вокруг X (нос вверх/вниз)", "cgrx", 15, -180, 180, upd, degs)
		stepper(cg, "Поворот вокруг Y (нос влево/вправо)", "cgry", 15, -180, 180, upd, degs)
		stepper(cg, "Поворот вокруг Z (крен)", "cgrz", 15, -180, 180, upd, degs)
		stepper(cg, "Размер модели (100% = длина 3 студа)", "cgsize", 10, 20, 500, upd, pct)

		local curLbl = lbl(cg, "", 12, PAL.yellow, 20)
		local function refreshCur()
			curLbl.Text = (S("gunskin") == "custom") and "Сейчас в руках: СВОЯ пушка" or "Сейчас в руках: пушка из списка выше"
		end
		refreshCur()
		refreshers[#refreshers + 1] = refreshCur
		local bPick = button(row(cg, 48), "✓  ВЗЯТЬ СВОЮ ПУШКУ В РУКИ", PAL.green, PAL.ink, { Size = UDim2.fromScale(1, 1), TextSize = 14 })
		local bDel = button(row(cg, 40), "✕  УДАЛИТЬ СВОЮ МОДЕЛЬ", PAL.red, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 12 })

		local function say(text, color)
			statusLbl.Text = text
			statusLbl.TextColor3 = color or PAL.muted
		end
		bPlus.Activated:Connect(function()
			cg.Visible = not cg.Visible
			bPlus.Text = cg.Visible and "▲  СВЕРНУТЬ" or "＋  ДОБАВИТЬ СВОЮ МОДЕЛЬ ПУШКИ"
			if cg.Visible then
				local m, info = ICONS.runModel(S("cgcode"))
				if m then say("✓ Модель загружена: деталей " .. info.n, PAL.green) end
				refreshPreview()
			end
		end)
		bLoad.Activated:Connect(function()
			local code = box.Text
			local changed = (code ~= S("cgcode"))
			local m, info = ICONS.runModel(code, true)
			if not m then
				say("✕ " .. tostring(info), PAL.red)
				return
			end
			set("cgcode", code)
			if changed then
				-- новая модель: ставим её над рукой и впереди, размер по умолчанию
				set("cgx", 0) set("cgy", 6) set("cgz", -8)
				set("cgrx", 0) set("cgry", 0) set("cgrz", 0) set("cgsize", 100)
				for _, f in ipairs(refreshers) do f() end
			end
			say("✓ Модель загружена: деталей " .. info.n .. ". Подгони под руку и жми «ВЗЯТЬ В РУКИ».", PAL.green)
			refreshPreview()
			if S("gunskin") == "custom" then regive() end
		end)
		bClr.Activated:Connect(function()
			box.Text = ""
			say("")
		end)
		bPick.Activated:Connect(function()
			local m, info = ICONS.runModel(S("cgcode"))
			if not m then
				say("✕ Сначала загрузи рабочую модель: " .. tostring(info), PAL.red)
				return
			end
			set("gunskin", "custom")
			mark()
			refreshCur()
			regive()
			toast("Пушка: своя модель", 2)
		end)
		bDel.Activated:Connect(function()
			set("cgcode", "")
			box.Text = ""
			if ICONS.cgCache and ICONS.cgCache.model then ICONS.cgCache.model:Destroy() end
			ICONS.cgCache = nil
			if S("gunskin") == "custom" then
				set("gunskin", "rick")
				mark()
				regive()
			end
			refreshCur()
			say("Своя модель удалена")
			refreshPreview()
		end)
		end)
		if not okEd then warn("[PortalGun] редактор своей пушки: " .. tostring(errEd)) end
	end

	-- превью медленно вращается, пока открыта вкладка СКИН
	RunService.RenderStepped:Connect(function()
		if not (tabSkin.Visible and dim.Visible) then return end
		local a = os.clock() * 0.7
		for _, c in pairs(cards) do
			if c.aim then c.aim(a) end
		end
	end)
end

do
	---------------- вкладка: БОМБА ----------------
	local tabBomb = mkTab("bomb", "✹ БОМБА", 4)
	header(tabBomb, "БОМБА В ПОРТАЛ")
	lbl(tabBomb, "Выбери игрока и жми «Запустить»: ты активируешь бомбу и бросаешь её в портал, она падает из портала над целью и сразу взрывается, цель в крови отлетает, камера наезжает на неё, и она умирает. Это анимация на твоём экране — другие игроки её не видят.", 12, PAL.muted, 92)
	local selLbl = lbl(tabBomb, "Цель: не выбрана", 13, PAL.yellow, 22)
	local bGoB = button(row(tabBomb, 54), "✹  ЗАПУСТИТЬ БОМБУ", PAL.red, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 16 })
	stroke(bGoB, Color3.fromRGB(140, 30, 40), 2)
	do
		local oRow = row(tabBomb, 44)
		local bO = button(oRow, "", PAL.slate, PAL.white, { Size = UDim2.fromScale(1, 1), TextSize = 13 })
		local function upd()
			oRow.Visible = portals.Ach.unlocked("prime")
			local on = S("omega") == true
			bO.Text = on and "☢ ОМЕГА-БОМБА: ВКЛ" or "☢ ОМЕГА-БОМБА: ВЫКЛ"
			bO.BackgroundColor3 = on and PAL.red or PAL.slate
		end
		bO.Activated:Connect(function()
			set("omega", not (S("omega") == true))
			upd()
		end)
		upd()
		portals.Ach.listeners[#portals.Ach.listeners + 1] = upd
	end
	lbl(tabBomb, "// ИГРОКИ", 13, PAL.cyan, 20)
	local noOne = lbl(tabBomb, "Кроме тебя в игре никого нет.", 12, PAL.muted, 24)
	local listHolder = new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = #tabBomb:GetChildren() }, tabBomb)
	new("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }, listHolder)

	local selected = nil
	local function refreshList()
		for _, c in ipairs(listHolder:GetChildren()) do
			if c:IsA("TextButton") then c:Destroy() end
		end
		local plist = {}
		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= lp then plist[#plist + 1] = p end
		end
		table.sort(plist, function(a, b) return a.Name:lower() < b.Name:lower() end)
		if selected and selected.Parent ~= Players then selected = nil end
		noOne.Visible = (#plist == 0)
		local _, myHrp = getChar()
		for i, p in ipairs(plist) do
			local on = (p == selected)
			local b = new("TextButton", {
				Text = "", AutoButtonColor = false, BackgroundColor3 = on and PAL.panel2 or PAL.panel,
				Size = UDim2.new(1, 0, 0, 48), LayoutOrder = i,
			}, listHolder)
			round(b, 10)
			stroke(b, on and PAL.red or PAL.edge, on and 2 or 1)
			new("ImageLabel", {
				BackgroundColor3 = PAL.ink, Position = UDim2.fromOffset(6, 6), Size = UDim2.fromOffset(36, 36),
				Image = "rbxthumb://type=AvatarHeadShot&id=" .. p.UserId .. "&w=150&h=150",
			}, b)
			new("TextLabel", {
				BackgroundTransparency = 1, Text = p.DisplayName, Font = Enum.Font.Code, TextSize = 14, TextColor3 = PAL.white,
				TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
				Position = UDim2.fromOffset(50, 5), Size = UDim2.new(1, -96, 0, 20),
			}, b)
			local dtxt = "@" .. p.Name
			local th = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
			if th and myHrp then dtxt = dtxt .. " · " .. math.floor((th.Position - myHrp.Position).Magnitude + 0.5) .. " студ" end
			new("TextLabel", {
				BackgroundTransparency = 1, Text = dtxt, Font = Enum.Font.RobotoMono, TextSize = 11, TextColor3 = PAL.muted,
				TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
				Position = UDim2.fromOffset(50, 26), Size = UDim2.new(1, -96, 0, 16),
			}, b)
			new("TextLabel", {
				BackgroundTransparency = 1, Text = on and "◎" or "", Font = Enum.Font.Code, TextSize = 22, TextColor3 = PAL.red,
				AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(34, 34),
			}, b)
			b.Activated:Connect(function()
				selected = p
				refreshList()
			end)
		end
		selLbl.Text = selected and ("Цель: " .. selected.DisplayName .. " (@" .. selected.Name .. ")") or "Цель: не выбрана"
	end
	tabBtns.bomb.Activated:Connect(refreshList)
	Players.PlayerAdded:Connect(function() if tabBomb.Visible then refreshList() end end)
	Players.PlayerRemoving:Connect(function(p)
		if p == selected then selected = nil end
		task.defer(function() if tabBomb.Visible then refreshList() end end)
	end)
	refreshList()

	-- чёрная/белая вспышка поверх экрана (смена кадра и взрыв)
	local flash = new("Frame", {
		Name = "BombFlash", BackgroundColor3 = Color3.new(0, 0, 0), BorderSizePixel = 0, BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1), Visible = false, ZIndex = 80,
	}, fxGui)
	local function fade(color, to, dur)
		if color then flash.BackgroundColor3 = color end
		flash.Visible = true
		TweenService:Create(flash, TweenInfo.new(dur), { BackgroundTransparency = to }):Play()
		task.wait(dur)
		if to >= 1 then flash.Visible = false end
	end

	-- модель бомбы (как на фото): серо-зелёный шар, утыканный тёмными раструбами с розовыми линзами
	local function buildBomb(omega)
		local m = Instance.new("Model")
		m.Name = "PortalBomb"
		local BALL, CYL = Enum.PartType.Ball, Enum.PartType.Cylinder
		local R = 0.7 -- радиус шара
		local function part(name, shape, size, cf, color, mat)
			local p = Instance.new("Part")
			p.Name = name
			p.Shape = shape
			p.Anchored = true
			p.CanCollide = false
			p.CanQuery = false
			p.CanTouch = false
			p.CastShadow = false
			p.Size = size
			p.CFrame = cf
			p.Color = color
			p.Material = mat
			p.Parent = m
			return p
		end
		local body = part("Body", BALL, Vector3.new(R * 2, R * 2, R * 2), CFrame.new(), (omega and Color3.fromRGB(42, 22, 66) or Color3.fromRGB(78, 92, 92)), Enum.Material.Metal)
		m.PrimaryPart = body

		local LENS_ON, LENS_OFF = Color3.fromRGB(240, 50, 155), Color3.fromRGB(125, 22, 80)
		if omega then LENS_ON, LENS_OFF = Color3.fromRGB(180, 100, 255), Color3.fromRGB(70, 30, 110) end
		local lenses = {}
		local N = 26                                  -- сколько раструбов
		local golden = math.pi * (3 - math.sqrt(5))   -- равномерно по сфере (спираль Фибоначчи)
		for i = 0, N - 1 do
			local y = 1 - (i + 0.5) / N * 2
			local rr = math.sqrt(math.max(0, 1 - y * y))
			local th = golden * i
			local d = Vector3.new(math.cos(th) * rr, y, math.sin(th) * rr)
			local up = (math.abs(y) > 0.9) and Vector3.new(1, 0, 0) or Vector3.new(0, 1, 0)
			-- ось цилиндра (его X) направлена от центра шара наружу по d
			local function at(dist)
				return CFrame.lookAt(d * dist, d * dist + d, up) * CFrame.Angles(0, math.pi / 2, 0)
			end
			part("Stem" .. i, CYL, Vector3.new(0.42, 0.46, 0.46), at(R + 0.08), Color3.fromRGB(38, 44, 46), Enum.Material.Metal)
			part("Flare" .. i, CYL, Vector3.new(0.16, 0.7, 0.7), at(R + 0.3), Color3.fromRGB(52, 60, 62), Enum.Material.Metal)
			part("Rim" .. i, CYL, Vector3.new(0.05, 0.54, 0.54), at(R + 0.375), Color3.fromRGB(238, 205, 226), Enum.Material.SmoothPlastic)
			lenses[#lenses + 1] = part("Lens" .. i, CYL, Vector3.new(0.06, 0.44, 0.44), at(R + 0.405), LENS_OFF, Enum.Material.Neon)
		end
		local rl = new("PointLight", { Color = omega and Color3.fromRGB(170, 90, 255) or Color3.fromRGB(255, 70, 170), Range = 9, Brightness = 0 }, body)

		-- табло с таймером над бомбой
		local bb = new("BillboardGui", {
			Size = UDim2.fromOffset(66, 24), StudsOffset = Vector3.new(0, 2.2, 0), AlwaysOnTop = true, LightInfluence = 0,
		}, body)
		local txt = new("TextLabel", {
			Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(24, 0, 14), BackgroundTransparency = 0.25,
			Font = Enum.Font.Code, TextScaled = true, Text = "ARM", TextColor3 = Color3.fromRGB(255, 90, 180),
		}, bb)
		round(txt, 6)

		local B = { model = m, text = txt }
		function B.blink(on)
			for _, l in ipairs(lenses) do
				l.Color = on and LENS_ON or LENS_OFF
			end
			rl.Brightness = on and 3 or 0
			txt.TextColor3 = on and Color3.fromRGB(255, 100, 190) or Color3.fromRGB(130, 30, 85)
		end
		B.blink(false)
		return B
	end

	local GRAV = 70
	-- вся сцена. Всё делается ЛОКАЛЬНО: на твоём экране копия цели падает, ползёт и «взрывается»;
	-- настоящему игроку и серверу ничего не отправляется.
	local function runBomb(plr)
		local undo = {}
		local function onUndo(fn) undo[#undo + 1] = fn end
		local ok, err = pcall(function()
			local char, hrp, hum = getChar()
			if not hrp then error("нет персонажа", 0) end
			local cam = workspace.CurrentCamera
			local params = rayParams(nil)
			local OM = (S("omega") == true) and portals.Ach.unlocked("prime")
			local BK = OM and 1.6 or 1
			local Q = OM and 2.2 or 1
			local vchar = plr.Character
			if not (vchar and vchar:FindFirstChild("HumanoidRootPart")) then error("у цели нет персонажа", 0) end
			local function ease(x)
				x = math.clamp(x, 0, 1)
				return x * x * (3 - 2 * x)
			end
			local function over(dur, fn)
				local t0 = os.clock()
				while true do
					if not (hrp and hrp.Parent) then error("персонаж пропал", 0) end
					local a = (os.clock() - t0) / dur
					if a >= 1 then fn(1) return end
					fn(a)
					RunService.RenderStepped:Wait()
				end
			end

			----------------------------------------------------------
			-- копия цели (создаём заранее, чтобы ошибка была до анимации)
			----------------------------------------------------------
			pcall(function() vchar.Archivable = true end)
			local clone = vchar:Clone()
			if not clone then error("не получилось скопировать цель", 0) end
			onUndo(function() clone:Destroy() end)
			for _, d in ipairs(clone:GetDescendants()) do
				if d:IsA("LuaSourceContainer") or d:IsA("Humanoid") or d:IsA("Sound") or d:IsA("BillboardGui") or d:IsA("ForceField") or d:IsA("Highlight") then
					d:Destroy()
				end
			end
			local root = clone:FindFirstChild("HumanoidRootPart")
			if not root then error("у цели нестандартная модель", 0) end
			local cr15 = clone:FindFirstChild("UpperTorso") ~= nil
			local cparts, cdecals = {}, {}
			for _, d in ipairs(clone:GetDescendants()) do
				if d:IsA("BasePart") then
					d.Anchored = (d == root)
					d.CanCollide = false
					d.CanTouch = false
					d.CanQuery = false
					cparts[#cparts + 1] = { p = d, t = d.Transparency }
				elseif d:IsA("Decal") then
					cdecals[#cdecals + 1] = { d = d, t = d.Transparency }
				end
			end
			clone.PrimaryPart = root
			local function joint(...)
				for _, n in ipairs({ ... }) do
					local j = clone:FindFirstChild(n, true)
					if j and j:IsA("Motor6D") then return { j = j, c0 = j.C0 } end
				end
				return nil
			end
			local J = {
				rs = joint("RightShoulder", "Right Shoulder"), ls = joint("LeftShoulder", "Left Shoulder"),
				re = joint("RightElbow"), le = joint("LeftElbow"),
				rh = joint("RightHip", "Right Hip"), lh = joint("LeftHip", "Left Hip"),
				rk = joint("RightKnee"), lk = joint("LeftKnee"),
				nk = cr15 and joint("Neck") or nil,
			}
			-- phi: 0 = рука/нога вниз, + = вперёд (в сторону груди), 3.14 = вверх над головой
			local function fwd(e, left, phi)
				if not e then return end
				e.j.C0 = e.c0 * (cr15 and CFrame.Angles(phi, 0, 0) or CFrame.Angles(0, 0, left and -phi or phi))
			end
			local function bend(e, phi)
				if e then e.j.C0 = e.c0 * CFrame.Angles(phi, 0, 0) end
			end

			----------------------------------------------------------
			-- 1. ты: замираешь, лицом к месту портала, бомба в руке
			----------------------------------------------------------
			local cl = cam.CFrame.LookVector
			local flat = Vector3.new(cl.X, 0, cl.Z)
			if flat.Magnitude < 0.1 then
				local lv = hrp.CFrame.LookVector
				flat = Vector3.new(lv.X, 0, lv.Z)
			end
			flat = flat.Magnitude > 0.1 and flat.Unit or Vector3.new(0, 0, -1)
			-- ФИКС ПРОВАЛИВАНИЯ: ставим персонажа ровно на пол, замораживаем и держим на месте каждый кадр
			local standPos = hrp.Position
			local gOwn = workspace:Raycast(standPos + Vector3.new(0, 1, 0), Vector3.new(0, -15, 0), params)
			if gOwn then standPos = Vector3.new(standPos.X, math.max(standPos.Y, gOwn.Position.Y + hh), standPos.Z) end
			local lockCF = CFrame.lookAt(standPos, standPos + flat)
			char:PivotTo(lockCF)
			hrp.AssemblyLinearVelocity = Vector3.zero
			hrp.AssemblyAngularVelocity = Vector3.zero
			hrp.Anchored = true
			local hws, hjp, hjh, har = hum.WalkSpeed, hum.JumpPower, hum.JumpHeight, hum.AutoRotate
			hum.WalkSpeed, hum.JumpPower, hum.JumpHeight, hum.AutoRotate = 0, 0, 0, false
			local pinConn = RunService.Heartbeat:Connect(function()
				if hrp.Parent then
					if (hrp.Position - lockCF.Position).Magnitude > 0.05 then hrp.CFrame = lockCF end
					hrp.AssemblyLinearVelocity = Vector3.zero
					hrp.AssemblyAngularVelocity = Vector3.zero
				end
			end)
			onUndo(function()
				pinConn:Disconnect()
				if hum and hum.Parent then hum.WalkSpeed, hum.JumpPower, hum.JumpHeight, hum.AutoRotate = hws, hjp, hjh, har end
				if hrp.Parent then
					hrp.CFrame = lockCF + Vector3.new(0, 0.15, 0)
					hrp.AssemblyLinearVelocity = Vector3.zero
					hrp.AssemblyAngularVelocity = Vector3.zero
					hrp.Anchored = false
					-- пару кадров гасим скорость, чтобы физика не «утопила» персонажа при разморозке
					task.spawn(function()
						for _ = 1, 8 do
							RunService.Heartbeat:Wait()
							if hrp.Parent then hrp.AssemblyLinearVelocity = Vector3.zero end
						end
					end)
				end
			end)

			local mr15 = hum.RigType == Enum.HumanoidRigType.R15
			local sh = char:FindFirstChild("RightShoulder", true) or char:FindFirstChild("Right Shoulder", true)
			if sh and not sh:IsA("Motor6D") then sh = nil end
			local shC0 = sh and sh.C0 or nil
			local function arm(phi)
				if sh and shC0 and sh.Parent then
					sh.C0 = shC0 * (mr15 and CFrame.Angles(phi, 0, 0) or CFrame.Angles(0, 0, phi))
				end
			end
			onUndo(function() if sh and shC0 and sh.Parent then sh.C0 = shC0 end end)

			-- мой портал впереди
			local dist = 7.5
			local wall = workspace:Raycast(hrp.Position + Vector3.new(0, 1.5, 0), flat * 7.5, params)
			if wall then dist = math.max(3.5, wall.Distance - 1.2) end
			local spot = hrp.Position + flat * dist
			local g1 = workspace:Raycast(spot + Vector3.new(0, 4, 0), Vector3.new(0, -40, 0), params)
			local gy1 = g1 and g1.Position.Y or (hrp.Position.Y - hh)
			local pc = Vector3.new(spot.X, gy1 + 4.1, spot.Z)
			local P1 = spawnPortal(pc, -flat, 5.6, 8, { untracked = true, openT = 0.5 })
			onUndo(function() closePortal(P1) end)

			local bomb = buildBomb(OM)
			if OM then pcall(function() bomb.model:ScaleTo(BK) end) end
			bomb.model.Parent = fx
			onUndo(function() bomb.model:Destroy() end)
			local hand = char:FindFirstChild("RightHand") or char:FindFirstChild("Right Arm")
			local hoff = (hand and hand.Name == "RightHand") and CFrame.new(0, -0.45, 0) or CFrame.new(0, -1.2, 0)
			local held = true
			local conn = RunService.RenderStepped:Connect(function()
				if not held then return end
				if hand and hand.Parent then
					bomb.model:PivotTo(hand.CFrame * hoff)
				else
					bomb.model:PivotTo(hrp.CFrame * CFrame.new(1.5, 0, -1.5))
				end
			end)
			onUndo(function() conn:Disconnect() end)
			bomb.blink(false)

			-- активация: рука поднимается, бомба мигает
			toast("Бомба активирована", 2)
			task.spawn(function()
				for _ = 1, 3 do
					bomb.blink(true)
					task.wait(0.14)
					bomb.blink(false)
					task.wait(0.14)
				end
			end)
			over(0.5, function(a) arm(math.rad(75) * ease(a)) end)
			bomb.text.Text = "5.0"
			bomb.blink(true)
			task.wait(0.45)
			-- замах и бросок
			over(0.3, function(a) arm(math.rad(75) - math.rad(110) * ease(a)) end)
			local p0
			over(0.16, function(a)
				arm(math.rad(-35) + math.rad(140) * a)
				if held and a >= 0.7 then
					held = false
					p0 = bomb.model:GetPivot().Position
				end
			end)
			if held then
				held = false
				p0 = bomb.model:GetPivot().Position
			end
			task.spawn(function()
				over(0.45, function(a) arm(math.rad(105) * (1 - ease(a))) end)
			end)
			-- полёт бомбы в портал: высокая дуга, кувырки, розовый шлейф; у портала её закручивает воронкой
			do
				local body = bomb.model.PrimaryPart
				if body then
					local tr = Instance.new("ParticleEmitter")
					tr.Rate = 90
					tr.Lifetime = NumberRange.new(0.35, 0.6)
					tr.Speed = NumberRange.new(0, 1.5)
					tr.SpreadAngle = Vector2.new(25, 25)
					tr.LightEmission = 1
					tr.Color = ColorSequence.new(Color3.fromRGB(255, 110, 200), Color3.fromRGB(150, 40, 255))
					tr.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 0) })
					tr.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 1) })
					tr.Parent = body
				end
				local u = (pc - p0)
				u = u.Magnitude > 0.1 and u.Unit or Vector3.new(0, 0, -1)
				local r1 = u:Cross(Vector3.new(0, 1, 0))
				r1 = r1.Magnitude > 0.1 and r1.Unit or Vector3.new(1, 0, 0)
				local r2 = u:Cross(r1).Unit
				over(0.95, function(a)
					local pos = p0:Lerp(pc, a) + Vector3.new(0, math.sin(a * math.pi) * 5.5, 0)
					local b = math.clamp((a - 0.72) / 0.28, 0, 1) -- 0..1 — последняя часть полёта у портала
					if b > 0 then
						local rad = 1.5 * math.sin(b * math.pi)
						local th = b * math.pi * 3
						pos = pos + (r1 * math.cos(th) + r2 * math.sin(th)) * rad
					end
					bomb.model:PivotTo(CFrame.new(pos) * CFrame.Angles(a * 18, a * 7, a * 4))
					pcall(function() bomb.model:ScaleTo(BK * math.max(0.1, 1 - 0.9 * b * b)) end)
				end)
				-- вспышка в портале: розовая сфера расширяется и гаснет
				local fl = Instance.new("Part")
				fl.Shape = Enum.PartType.Ball
				fl.Anchored = true
				fl.CanCollide = false
				fl.CanQuery = false
				fl.CanTouch = false
				fl.CastShadow = false
				fl.Material = Enum.Material.Neon
				fl.Color = Color3.fromRGB(255, 110, 200)
				fl.Size = Vector3.new(0.6, 0.6, 0.6)
				fl.Transparency = 0.1
				fl.CFrame = CFrame.new(pc)
				fl.Parent = fx
				TweenService:Create(fl, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = Vector3.new(8, 8, 8), Transparency = 1 }):Play()
				Debris:AddItem(fl, 0.5)
			end
			bomb.model:Destroy()
			closePortal(P1)

			----------------------------------------------------------
			-- 2. смена кадра: камера уходит к цели
			----------------------------------------------------------
			fade(Color3.new(0, 0, 0), 0, 0.3)
			local vhrp = vchar:FindFirstChild("HumanoidRootPart")
			if not (plr.Parent and plr.Character == vchar and vhrp) then error("цель пропала", 0) end
			local vhum = vchar:FindFirstChildOfClass("Humanoid")
			local vvh = (vhum and vhum.RigType == Enum.HumanoidRigType.R15) and (vhum.HipHeight + vhrp.Size.Y / 2) or 3
			local vlv = vhrp.CFrame.LookVector
			local vf = Vector3.new(vlv.X, 0, vlv.Z)
			vf = vf.Magnitude > 0.1 and vf.Unit or Vector3.new(0, 0, -1)
			local cd = -vf -- куда ползёт цель (от бомбы)
			local vpos = vhrp.Position
			local gr = workspace:Raycast(vpos, Vector3.new(0, -80, 0), params)
			local vgy = gr and gr.Position.Y or (vpos.Y - vvh)
			local flat0 = Vector3.new(vpos.X, 0, vpos.Z)

			-- где упадёт бомба и где откроется портал над ней
			local bflat = flat0 + vf * 2.0
			local gb = workspace:Raycast(Vector3.new(bflat.X, vgy + 6, bflat.Z), Vector3.new(0, -30, 0), params)
			local bgy = gb and gb.Position.Y or vgy
			local bpos = Vector3.new(bflat.X, bgy + 0.65, bflat.Z)
			local ph = 9
			local ceil = workspace:Raycast(bpos, Vector3.new(0, 10, 0), params)
			if ceil then ph = math.max(3, ceil.Distance - 1) end
			local ppos = Vector3.new(bflat.X, bpos.Y + ph, bflat.Z)

			-- прячем настоящего игрока (только у тебя на экране), вместо него — копия
			local hidP, hidD = {}, {}
			local prevDist = vhum and vhum.DisplayDistanceType
			for _, d in ipairs(vchar:GetDescendants()) do
				if d:IsA("BasePart") then
					hidP[#hidP + 1] = d
					d.LocalTransparencyModifier = 1
				elseif d:IsA("Decal") then
					hidD[#hidD + 1] = { d, d.Transparency }
					d.Transparency = 1
				end
			end
			if vhum then vhum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None end
			onUndo(function()
				for _, p in ipairs(hidP) do
					if p.Parent then p.LocalTransparencyModifier = 0 end
				end
				for _, e in ipairs(hidD) do
					if e[1].Parent then e[1].Transparency = e[2] end
				end
				if vhum and vhum.Parent and prevDist then vhum.DisplayDistanceType = prevDist end
			end)

			local standH, proneH = vgy + vvh, vgy + 0.75
			root.CFrame = CFrame.new(vpos.X, standH, vpos.Z) * CFrame.lookAt(Vector3.zero, vf)
			clone.Parent = fx

			local bomb2 = buildBomb(OM)
			if OM then pcall(function() bomb2.model:ScaleTo(BK) end) end
			onUndo(function() bomb2.model:Destroy() end)
			local P2
			onUndo(function() if P2 then closePortal(P2) end end)

			-- камера сбоку: видно портал, бомбу и путь ползущего
			local right = vf:Cross(Vector3.yAxis)
			right = right.Magnitude > 0.1 and right.Unit or Vector3.xAxis
			local cc = flat0 - vf * 1.4 + Vector3.new(0, bgy + 3.5, 0)
			local off = right * 12 + Vector3.new(0, 1.5, 0)
			local rc = workspace:Raycast(cc, off, params)
			if rc then off = off.Unit * math.max(4, rc.Distance - 1) end
			local camPos, camLook, shake, camFov = cc + off, cc, 0, 70
			local prevType, prevFov = cam.CameraType, cam.FieldOfView
			pcall(function() RunService:UnbindFromRenderStep("PortalGunBomb") end)
			RunService:BindToRenderStep("PortalGunBomb", Enum.RenderPriority.Camera.Value + 3, function()
				cam.CameraType = Enum.CameraType.Scriptable
				cam.FieldOfView = camFov
				local o = shake > 0.001 and (Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5) * shake) or Vector3.zero
				cam.CFrame = CFrame.lookAt(camPos + o, camLook + o)
			end)
			onUndo(function()
				pcall(function() RunService:UnbindFromRenderStep("PortalGunBomb") end)
				cam.FieldOfView = prevFov
				cam.CameraType = (prevType ~= Enum.CameraType.Scriptable) and prevType or Enum.CameraType.Custom
			end)
			task.wait(0.1)
			fade(nil, 1, 0.35)

			----------------------------------------------------------
			-- 3. сцена у цели: портал над ней, бомба падает, цель падает и ползёт
			----------------------------------------------------------
			local TBOMB = 0.6
			local fallDur = math.sqrt(2 * (ppos.Y - bpos.Y) / GRAV)
			local tL = TBOMB + fallDur -- момент касания земли = момент взрыва
			local baseRot = CFrame.lookAt(Vector3.zero, vf)
			local bombShown = false
			local T0 = os.clock()
			P2 = spawnPortal(ppos, Vector3.new(0, -1, 0), 5.5, 5.5, { up = Vector3.new(0, 0, 1), untracked = true, openT = 0.5, sc = 1.2 })
			local function track(i) onUndo(function() i:Destroy() end) return i end

			root.CFrame = CFrame.new(flat0.X, standH, flat0.Z) * baseRot

			-- цель стоит, из портала падает бомба; как только бомба долетела до цели — СРАЗУ взрыв
			while true do
				if not (hrp and hrp.Parent) then error("персонаж пропал", 0) end
				local t = os.clock() - T0
				if t >= TBOMB and not bombShown then
					bombShown = true
					bomb2.model.Parent = fx
				end
				if bombShown then
					local dt = math.min(t, tL) - TBOMB
					bomb2.model:PivotTo(CFrame.new(ppos.X, ppos.Y - 0.5 * GRAV * dt * dt, ppos.Z) * CFrame.Angles(t * 6, t * 4, 0))
					bomb2.text.Text = "ARM"
					bomb2.blink(math.floor(t * 14) % 2 == 0)
				end
				-- цель вздрагивает и поднимает руки, когда видит бомбу
				local j = ease((t - 0.35) / 0.3)
				fwd(J.rs, false, 1.5 * j)
				fwd(J.ls, true, 1.5 * j)
				if cr15 then bend(J.re, 0.1 + 0.4 * j) bend(J.le, 0.1 + 0.4 * j) end
				if t >= tL then break end
				RunService.Heartbeat:Wait()
			end
			closePortal(P2)

			----------------------------------------------------------
			-- 4. ВЗРЫВ → цель в крови отлетает → камера к ней → смерть
			----------------------------------------------------------
			bomb2.model:Destroy()
			local ep = bpos
			local function explode()
				local function ball(s0, s1, color, tr0, dur)
					local b = new("Part", {
						Shape = Enum.PartType.Ball, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
						Material = Enum.Material.Neon, Color = color, Transparency = tr0, Size = Vector3.new(s0, s0, s0), Position = ep,
					}, fx)
					TweenService:Create(b, TweenInfo.new(dur, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = Vector3.new(s1, s1, s1), Transparency = 1,
					}):Play()
					Debris:AddItem(b, dur + 0.2)
					return b
				end
				local fb = ball(1.5 * Q, 18 * Q, OM and Color3.fromRGB(190, 110, 255) or Color3.fromRGB(255, 130, 30), 0.05, 0.55)
				local lt = new("PointLight", { Color = Color3.fromRGB(255, 170, 70), Range = 50 * Q, Brightness = 12 }, fb)
				TweenService:Create(lt, TweenInfo.new(0.8), { Brightness = 0 }):Play()
				ball(Q, 10 * Q, Color3.fromRGB(255, 245, 190), 0, 0.3)
				if OM then ball(2, 42, Color3.fromRGB(200, 130, 255), 0.1, 0.9) end
				-- ударная волна по земле
				local ring = new("Part", {
					Shape = Enum.PartType.Cylinder, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
					Material = Enum.Material.Neon, Color = Color3.fromRGB(255, 215, 150), Transparency = 0.25, Size = Vector3.new(0.4, 3, 3),
					CFrame = CFrame.new(ep.X, bgy + 0.3, ep.Z) * CFrame.Angles(0, 0, math.pi / 2),
				}, fx)
				TweenService:Create(ring, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Size = Vector3.new(0.4, 46 * Q, 46 * Q), Transparency = 1,
				}):Play()
				Debris:AddItem(ring, 0.9)
				-- подпалина на земле
				local scorch = new("Part", {
					Shape = Enum.PartType.Cylinder, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
					Material = Enum.Material.SmoothPlastic, Color = Color3.fromRGB(12, 12, 12), Transparency = 0.2, Size = Vector3.new(0.06, 9 * Q, 9 * Q),
					CFrame = CFrame.new(ep.X, bgy + 0.05, ep.Z) * CFrame.Angles(0, 0, math.pi / 2),
				}, fx)
				task.delay(2.5, function()
					if scorch.Parent then TweenService:Create(scorch, TweenInfo.new(2), { Transparency = 1 }):Play() end
				end)
				Debris:AddItem(scorch, 4.8)
				-- дым
				for _ = 1, 10 do
					local a = math.random() * math.pi * 2
					local r = 1 + math.random() * 4
					local g = 40 + math.random(0, 25)
					local sm = new("Part", {
						Shape = Enum.PartType.Ball, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
						Material = Enum.Material.SmoothPlastic, Color = Color3.fromRGB(g, g, g), Transparency = 0.3, Size = Vector3.new(2, 2, 2),
						Position = ep + Vector3.new(math.cos(a) * r, 0.5, math.sin(a) * r),
					}, fx)
					local s1 = 6 + math.random() * 5
					local life = 1.6 + math.random() * 1.2
					TweenService:Create(sm, TweenInfo.new(life, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = Vector3.new(s1, s1, s1), Transparency = 1, Position = sm.Position + Vector3.new(0, 5 + math.random() * 4, 0),
					}):Play()
					Debris:AddItem(sm, life + 0.2)
				end
				-- осколки
				for _ = 1, 16 + (OM and 24 or 0) do
					local sz = 0.3 + math.random() * 0.6
					local hot = math.random() < 0.5
					local ch = new("Part", {
						Size = Vector3.new(sz, sz * (0.5 + math.random()), sz), Color = hot and Color3.fromRGB(255, 140, 30) or Color3.fromRGB(30, 30, 34),
						Material = hot and Enum.Material.Neon or Enum.Material.Metal, CanCollide = true, CanTouch = false, CanQuery = false,
						CFrame = CFrame.new(ep + Vector3.new(0, 0.5, 0)) * CFrame.Angles(math.random() * 6, math.random() * 6, math.random() * 6),
					}, fx)
					ch.AssemblyLinearVelocity = Vector3.new(math.random(-30, 30), math.random(25, 55), math.random(-30, 30))
					ch.AssemblyAngularVelocity = Vector3.new(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20))
					Debris:AddItem(ch, 2.8)
				end
				-- искры
				local sp = new("Part", {
					Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, Transparency = 1,
					Size = Vector3.new(0.5, 0.5, 0.5), Position = ep,
				}, fx)
				local pe = new("ParticleEmitter", {
					Rate = 0, Lifetime = NumberRange.new(0.5, 1.2), Speed = NumberRange.new(25, 55), SpreadAngle = Vector2.new(180, 180),
					LightEmission = 1, Color = ColorSequence.new(Color3.fromRGB(255, 200, 80), Color3.fromRGB(255, 80, 20)),
					Size = NumberSequence.new(0.6, 0), Transparency = NumberSequence.new(0, 1),
				}, sp)
				pe:Emit(math.floor(70 * Q))
				Debris:AddItem(sp, 2)
			end
			explode()
			shake = 2.4 * (OM and 2 or 1)
			task.spawn(function()
				flash.BackgroundColor3 = OM and Color3.fromRGB(235, 210, 255) or Color3.new(1, 1, 1)
				flash.BackgroundTransparency = OM and 0 or 0.2
				flash.Visible = true
				TweenService:Create(flash, TweenInfo.new(0.7), { BackgroundTransparency = 1 }):Play()
				task.wait(0.75)
				if flash.BackgroundTransparency >= 1 then flash.Visible = false end
			end)

			-- ---------- кровь ----------
			local BLOOD = Color3.fromRGB(120, 0, 0)
			local hl = new("Highlight", {
				Adornee = clone, FillColor = Color3.fromRGB(150, 0, 0), FillTransparency = 1, OutlineTransparency = 1,
				DepthMode = Enum.HighlightDepthMode.Occluded,
			}, clone)
			TweenService:Create(hl, TweenInfo.new(0.35), { FillTransparency = 0.38 }):Play()
			local torso = clone:FindFirstChild("UpperTorso") or clone:FindFirstChild("Torso") or root
			local head = clone:FindFirstChild("Head")
			local drip = new("ParticleEmitter", {
				Texture = "rbxasset://textures/particles/smoke_main.dds", Rate = 0, Lifetime = NumberRange.new(0.4, 0.9),
				Speed = NumberRange.new(6, 18), SpreadAngle = Vector2.new(180, 180), Acceleration = Vector3.new(0, -60, 0),
				Color = ColorSequence.new(BLOOD), LightEmission = 0, LightInfluence = 1,
				Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.55), NumberSequenceKeypoint.new(1, 0.15) }),
				Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.05), NumberSequenceKeypoint.new(1, 1) }),
			}, torso)
			drip:Emit(OM and 120 or 50)
			drip.Rate = 22
			-- кровавая взвесь в точке взрыва
			local bsrc = track(new("Part", { Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, Transparency = 1, Size = Vector3.one * 0.5, Position = ep + Vector3.new(0, 1, 0) }, fx))
			local bp = new("ParticleEmitter", {
				Texture = "rbxasset://textures/particles/smoke_main.dds", Rate = 0, Lifetime = NumberRange.new(0.5, 1.1),
				Speed = NumberRange.new(15, 40), SpreadAngle = Vector2.new(180, 180), Acceleration = Vector3.new(0, -70, 0),
				Color = ColorSequence.new(Color3.fromRGB(150, 0, 0), Color3.fromRGB(90, 0, 0)), LightEmission = 0, LightInfluence = 1,
				Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 0.2) }),
				Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1) }),
			}, bsrc)
			bp:Emit(OM and 220 or 90)
			local function splat(pos, r, dur)
				local g = workspace:Raycast(pos + Vector3.new(0, 3, 0), Vector3.new(0, -14, 0), params)
				if not g then return end
				local d = track(new("Part", {
					Shape = Enum.PartType.Cylinder, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
					Material = Enum.Material.SmoothPlastic, Color = Color3.fromRGB(math.random(95, 140), 0, 0), Size = Vector3.new(0.04, 0.2, 0.2),
					CFrame = CFrame.new(g.Position + Vector3.new(0, 0.04 + math.random() * 0.03, 0)) * CFrame.Angles(0, 0, math.pi / 2),
				}, fx))
				TweenService:Create(d, TweenInfo.new(dur, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = Vector3.new(0.04, r * 2, r * 2) }):Play()
			end
			for _ = 1, 16 do
				local a, rr = math.random() * math.pi * 2, 1 + math.random() * 6
				splat(ep + Vector3.new(math.cos(a) * rr, 0, math.sin(a) * rr), 0.3 + math.random() * 0.9, 0.3)
			end

			-- ---------- полёт цели от взрыва (скриптом, без физики — никуда не провалится) ----------
			local away = Vector3.new(root.Position.X - ep.X, 0, root.Position.Z - ep.Z)
			away = away.Magnitude > 0.3 and away.Unit or -vf
			local flyD = OM and 15 or 9
			local wr = workspace:Raycast(Vector3.new(ep.X, standH, ep.Z), away * flyD, params)
			if wr then flyD = math.max(2, wr.Distance - 1.2) end
			local lx, lz = flat0.X + away.X * flyD, flat0.Z + away.Z * flyD
			local gl = workspace:Raycast(Vector3.new(lx, standH + 3, lz), Vector3.new(0, -40, 0), params)
			local lgy = gl and gl.Position.Y or vgy
			local lieY = lgy + 0.75
			local sp0 = Vector3.new(flat0.X, standH, flat0.Z)
			local ep2 = Vector3.new(lx, lieY, lz)
			local FL = 0.75
			local tF = os.clock()
			while true do
				if not (hrp and hrp.Parent) then error("персонаж пропал", 0) end
				local a = math.min(1, (os.clock() - tF) / FL)
				local pos = Vector3.new(
					sp0.X + (ep2.X - sp0.X) * a,
					sp0.Y + (ep2.Y - sp0.Y) * a + 4.5 * math.sin(math.pi * a),
					sp0.Z + (ep2.Z - sp0.Z) * a)
				root.CFrame = CFrame.new(pos) * baseRot * CFrame.Angles((math.pi / 2) * ease(a), 0, 0)
				local f = math.sin(a * 16)
				fwd(J.rs, false, 2.6 + 0.5 * f)
				fwd(J.ls, true, 2.6 - 0.5 * f)
				fwd(J.rh, false, 0.5 * f)
				fwd(J.lh, true, -0.5 * f)
				if cr15 then
					bend(J.re, 0.5) bend(J.le, 0.5)
					bend(J.rk, -(0.3 + 0.3 * math.abs(f))) bend(J.lk, -(0.3 + 0.3 * math.abs(1 - math.abs(f))))
				end
				shake = 2.4 * (1 - a)
				camLook = camLook:Lerp(pos, 0.2)
				if a >= 1 then break end
				RunService.RenderStepped:Wait()
			end

			-- ---------- приземлился: лужа крови, камера наезжает на лицо, цель умирает ----------
			shake = 1.4
			drip:Emit(35)
			drip.Rate = 8
			local function pool(ox, oz, d1, delay, lift)
				local pl = track(new("Part", {
					Shape = Enum.PartType.Cylinder, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false, CastShadow = false,
					Material = Enum.Material.SmoothPlastic, Color = Color3.fromRGB(100, 0, 0), Reflectance = 0.08, Size = Vector3.new(0.05, 0.4, 0.4),
					CFrame = CFrame.new(lx + ox, lgy + lift, lz + oz) * CFrame.Angles(0, 0, math.pi / 2),
				}, fx))
				task.delay(delay, function()
					if pl.Parent then TweenService:Create(pl, TweenInfo.new(3.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = Vector3.new(0.05, d1, d1) }):Play() end
				end)
			end
			pool(0, 0, 7, 0.05, 0.05)
			pool(away.X * 1.2, away.Z * 1.2, 4.6, 0.2, 0.06)
			pool(-away.X * 1.0 + right.X * 0.8, -away.Z * 1.0 + right.Z * 0.8, 4, 0.35, 0.07)
			for _ = 1, 10 do
				local a, rr = math.random() * math.pi * 2, 1 + math.random() * 3.5
				splat(Vector3.new(lx + math.cos(a) * rr, lgy, lz + math.sin(a) * rr), 0.2 + math.random() * 0.5, 0.25)
			end

			-- кровь на «объективе» камеры
			local lens = {}
			for i = 1, 11 do
				local w = math.random(24, 84)
				local f = track(new("Frame", {
					BackgroundColor3 = Color3.fromRGB(math.random(105, 150), 0, 0), BackgroundTransparency = 1, BorderSizePixel = 0,
					Position = UDim2.fromScale(0.04 + math.random() * 0.88, math.random() * 0.65), Size = UDim2.fromOffset(w, w), ZIndex = 79,
				}, fxGui))
				new("UICorner", { CornerRadius = UDim.new(0.5, 0) }, f)
				lens[i] = { f = f, w = w, y = f.Position.Y.Scale, x = f.Position.X.Scale, sp = 0.008 + math.random() * 0.02, born = 0.5 + math.random() * 0.9 }
			end

			local camP0, camL0 = camPos, camLook
			local hp0 = (head and head.Parent) and head.Position or (root.Position + away * 1.6)
			local upH = 3.4
			local cr = workspace:Raycast(hp0, Vector3.new(0, 4, 0), params)
			if cr then upH = math.max(1.6, cr.Distance - 0.5) end
			local DT, dead = 4.0, false
			local tD = os.clock()
			while true do
				if not (hrp and hrp.Parent) then error("персонаж пропал", 0) end
				local d = os.clock() - tD
				if d >= DT then break end
				-- камера плавно уходит к окровавленному лицу
				local k = ease(d / 1.3)
				local slow = ease((d - 1.3) / 2.7)
				local hp = (head and head.Parent) and head.Position or hp0
				local tgtPos = hp + Vector3.new(0, upH - 0.45 * slow, 0) + right * 1.1
				local tgtLook = hp:Lerp(root.Position, 0.35)
				camPos = camP0:Lerp(tgtPos, k)
				camLook = camL0:Lerp(tgtLook, k)
				camFov = 70 - 30 * k - 4 * slow
				shake = math.max(0, 1.4 * (1 - d / 0.5))
				-- предсмертные судороги, потом тело обмякает
				local amp = math.clamp(1 - d / 1.5, 0, 1)
				local w = d * 30
				fwd(J.rs, false, 0.55 + amp * 0.7 * math.sin(w))
				fwd(J.ls, true, 0.3 - amp * 0.7 * math.sin(w + 1))
				fwd(J.rh, false, -0.12 + amp * 0.35 * math.sin(w + 2))
				fwd(J.lh, true, 0.1 - amp * 0.35 * math.sin(w + 0.5))
				if cr15 then
					bend(J.re, 0.35 + amp * 0.4 * math.sin(w + 1.3))
					bend(J.le, 0.25 + amp * 0.4 * math.sin(w))
					bend(J.rk, -(0.15 + amp * 0.3 * math.abs(math.sin(w))))
					bend(J.lk, -(0.1 + amp * 0.3 * math.abs(math.cos(w))))
				end
				-- брызги крови на экран + стекающие капли
				for _, e in ipairs(lens) do
					if d >= e.born then
						local age = d - e.born
						e.f.BackgroundTransparency = 0.2 + 0.25 * math.clamp(age / 3, 0, 1)
						e.f.Position = UDim2.fromScale(e.x, e.y + age * e.sp)
						e.f.Size = UDim2.fromOffset(e.w, e.w + age * e.sp * 900)
					end
				end
				-- смерть: кровь перестаёт течь, экран наливается красным
				if d >= 1.7 and not dead then
					dead = true
					drip.Rate = 0
					TweenService:Create(hl, TweenInfo.new(0.8), { FillTransparency = 0.25 }):Play()
					flash.BackgroundColor3 = Color3.fromRGB(110, 0, 0)
					flash.BackgroundTransparency = 1
					flash.Visible = true
					TweenService:Create(flash, TweenInfo.new(1.2), { BackgroundTransparency = 0.78 }):Play()
				end
				RunService.RenderStepped:Wait()
			end
			fade(Color3.new(0, 0, 0), 0, 0.7)
		end)
		-- откат: камера, видимость цели, твой персонаж, модели
		for i = #undo, 1, -1 do pcall(undo[i]) end
		busy = false
		if ok then pcall(portals.Ach.add, "bomb") end
		if not ok then
			warn("[PortalGun] бомба: " .. tostring(err))
			toast("Бомба не сработала: " .. tostring(err):sub(1, 90), 4)
		end
		if flash.Visible then pcall(fade, nil, 1, 0.5) end
	end

	bGoB.Activated:Connect(function()
		if not selected or selected.Parent ~= Players then
			toast("Сначала выбери игрока из списка", 3)
			return
		end
		local c, h = getChar()
		if not h then return end
		if busy then toast("Подожди — идёт другое действие") return end
		if map.active then return end
		if Ship.isRiding() then toast("Сначала выйди из корабля") return end
		local vc = selected.Character
		if not (vc and vc:FindFirstChild("HumanoidRootPart")) then
			toast("У этого игрока сейчас нет персонажа", 3)
			return
		end
		busy = true
		closeMenu()
		task.spawn(runBomb, selected)
	end)
end

do -- вкладка: ДОСТИЖЕНИЯ
	local A = portals.Ach
	local tabAch = mkTab("ach", "★ ДОСТИЖЕНИЯ", 9)
	header(tabAch, "ДОСТИЖЕНИЯ")
	lbl(tabAch, "Награды открываются сами. Как их получить — загадка.", 12, PAL.muted, 34)
	local LIST = {
		{ key = "morty", name = "МОРТИ", skin = "kidmorty", reward = "Награда: скин пушки «Морти» + футболка и штаны Морти (надеваются, когда пушка этого скина в руках)." },
		{ key = "prime", name = "РИК ПРАЙМ", skin = "rickprime", reward = "Награда: скин пушки Рика Прайма + ОМЕГА-БОМБА (включается во вкладке БОМБА)." },
		{ key = "rick", name = "НАСТОЯЩИЙ РИК", skin = "rickplus", reward = "Награда: улучшенный скин пушки Рика + одежда Рика (надевается, когда пушка этого скина в руках)." },
	}
	local cards = {}
	for _, a in ipairs(LIST) do
		local card = new("Frame", { BackgroundColor3 = PAL.panel2, Size = UDim2.new(1, 0, 0, 150), LayoutOrder = #tabAch:GetChildren(), ClipsDescendants = true }, tabAch)
		round(card, 12)
		local st = stroke(card, PAL.edge, 1.5)
		local holder = new("Frame", { BackgroundColor3 = PAL.ink, BorderSizePixel = 0, Position = UDim2.fromOffset(8, 8), Size = UDim2.new(0.42, -12, 1, -16) }, card)
		round(holder, 10)
		pcall(function() ICONS.view(holder, buildTool(a.skin), Vector3.new(1, 0.3, -0.55)) end)
		local nm = new("TextLabel", {
			BackgroundTransparency = 1, Text = a.name, Font = Enum.Font.Code, TextSize = 15, TextColor3 = PAL.white,
			TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0.42, 4, 0, 10), Size = UDim2.new(0.58, -12, 0, 22),
		}, card)
		new("TextLabel", {
			BackgroundTransparency = 1, Text = a.reward, Font = Enum.Font.RobotoMono, TextSize = 11, TextColor3 = PAL.muted,
			TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true,
			Position = UDim2.new(0.42, 4, 0, 36), Size = UDim2.new(0.58, -12, 0, 78),
		}, card)
		local tag = new("TextLabel", {
			BackgroundTransparency = 1, Text = "", Font = Enum.Font.Code, TextSize = 13, TextColor3 = PAL.muted,
			TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0.42, 4, 1, -30), Size = UDim2.new(0.58, -12, 0, 22),
		}, card)
		cards[a.key] = { st = st, nm = nm, tag = tag }
	end
	local function refresh()
		for k, c in pairs(cards) do
			local on = A.unlocked(k)
			c.st.Color = on and PAL.green or PAL.edge
			c.st.Thickness = on and 3 or 1.5
			c.tag.Text = on and "✓ ПОЛУЧЕНО" or "✕ НЕ ПОЛУЧЕНО"
			c.tag.TextColor3 = on and PAL.green or PAL.muted
			c.nm.TextColor3 = on and PAL.yellow or PAL.white
		end
	end
	A.listeners[#A.listeners + 1] = refresh
	tabBtns.ach.Activated:Connect(refresh)
	refresh()
end

---------------- открыть / закрыть ----------------
function openMenu(tabName)
	local _, hrp = getChar()
	if hrp then sub.Text = "POS " .. fmt(hrp.Position) end
	radInfo.Text = string.format("Если стены нет — портал в радиусе %d студов (меняется во вкладке ПОРТАЛ).", S("radius"))
	writeFields()
	refreshRecent()
	refreshPoints()
	refreshPlaces()
	setTab(tabName or "point")
	dim.Visible = true
end
function closeMenu()
	dim.Visible = false
end
dim.Activated:Connect(closeMenu)
bX.Activated:Connect(closeMenu)
bClosePortals.Activated:Connect(function()
	pendAction = "cancel"
	closeAllPortals()
	toast("Порталы закрыты")
end)
menuBtn.Activated:Connect(function()
	if dim.Visible then closeMenu() else openMenu("point") end
end)
UIS.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.G and gunEquipped and not map.active then
		if dim.Visible then closeMenu() else openMenu("point") end
	end
end)

----------------------------------------------------------------------
-- КАРТА: вид сверху · палец = движение (с инерцией) · щипок = масштаб · слой = высота
----------------------------------------------------------------------
map = { active = false, x = 0, z = 0, vx = 0, vz = 0, layer = 0, layerF = 0, zoom = 220, lo = 0, hi = 100, token = 0, pins = {} }
local cut = { list = {}, k = 0 }
local drags = {}
local mapMarker

local mapUI = new("Frame", { Name = "Map", BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Visible = false, ZIndex = 5 }, root2)
local mapInput = new("TextButton", { Text = "", AutoButtonColor = false, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 1 }, mapUI)
local gridFrame = new("Frame", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 2, ClipsDescendants = true }, mapUI)

-- верхняя плашка
local mTop = new("Frame", { BackgroundColor3 = PAL.panel, BackgroundTransparency = 0.1, AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 6), Size = UDim2.new(0.62, 0, 0, 40), ZIndex = 3 }, mapUI)
round(mTop, 10); stroke(mTop, PAL.edge, 1.5)
new("UISizeConstraint", { MaxSize = Vector2.new(420, 40), MinSize = Vector2.new(280, 40) }, mTop)
new("TextLabel", { BackgroundTransparency = 1, Text = "▦ MAP", Font = Enum.Font.Code, TextSize = 14, TextColor3 = PAL.cyan, TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.fromOffset(12, 0), Size = UDim2.new(0, 60, 1, 0), ZIndex = 4 }, mTop)
local mCoord = new("TextLabel", { BackgroundTransparency = 1, Text = "", Font = Enum.Font.Code, TextSize = 13, TextColor3 = PAL.white, TextXAlignment = Enum.TextXAlignment.Right, Position = UDim2.new(0, 70, 0, 2), Size = UDim2.new(1, -82, 0, 20), ZIndex = 4 }, mTop)
local mScale = new("TextLabel", { BackgroundTransparency = 1, Text = "", Font = Enum.Font.RobotoMono, TextSize = 11, TextColor3 = PAL.muted, TextXAlignment = Enum.TextXAlignment.Right, Position = UDim2.new(0, 70, 0, 20), Size = UDim2.new(1, -82, 0, 16), ZIndex = 4 }, mTop)

-- переход к координатам (для далёких мест)
local mJump = new("Frame", { BackgroundColor3 = PAL.panel, BackgroundTransparency = 0.1, AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 52), Size = UDim2.new(0.62, 0, 0, 40), ZIndex = 3 }, mapUI)
round(mJump, 10); stroke(mJump, PAL.edge, 1)
new("UISizeConstraint", { MaxSize = Vector2.new(420, 40), MinSize = Vector2.new(280, 40) }, mJump)
local jX = inputStyle(new("TextBox", { PlaceholderText = "X", Text = "", ClearTextOnFocus = false, Font = Enum.Font.Code, TextSize = 14, Position = UDim2.new(0, 4, 0, 4), Size = UDim2.new(0.28, -4, 1, -8), ZIndex = 4 }, mJump))
local jZ = inputStyle(new("TextBox", { PlaceholderText = "Z", Text = "", ClearTextOnFocus = false, Font = Enum.Font.Code, TextSize = 14, Position = UDim2.new(0.28, 2, 0, 4), Size = UDim2.new(0.28, -4, 1, -8), ZIndex = 4 }, mJump))
local jGo = button(mJump, "ПЕРЕЙТИ", PAL.cyan, PAL.ink, { Position = UDim2.new(0.56, 2, 0, 4), Size = UDim2.new(0.24, -3, 1, -8), TextSize = 11, ZIndex = 4 })
local jTgt = button(mJump, "◎ ЦЕЛЬ", PAL.slate, PAL.white, { Position = UDim2.new(0.8, 2, 0, 4), Size = UDim2.new(0.2, -6, 1, -8), TextSize = 11, ZIndex = 4 })

-- прицел по центру
local cross = new("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(36, 36), ZIndex = 3 }, mapUI)
new("UICorner", { CornerRadius = UDim.new(0.5, 0) }, cross)
local crossStroke = new("UIStroke", { Thickness = 2, Color = Color3.new(1, 1, 1) }, cross)
local crossDot = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(6, 6), BackgroundColor3 = Color3.new(1, 1, 1), ZIndex = 3 }, cross)
new("UICorner", { CornerRadius = UDim.new(0.5, 0) }, crossDot)

-- зум слева
local zIn = button(mapUI, "＋", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 8, 0.5, -28), Size = UDim2.fromOffset(48, 48), TextSize = 24, ZIndex = 3 })
local zOut = button(mapUI, "－", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 8, 0.5, 28), Size = UDim2.fromOffset(48, 48), TextSize = 24, ZIndex = 3 })
local function zoomBy(f) map.zoom = math.clamp(map.zoom * f, 30, S("maxzoom")) end
holdButton(zIn, function() zoomBy(0.93) end, 0.03)
holdButton(zOut, function() zoomBy(1.07) end, 0.03)

-- ползунок слоя справа
local sBox = new("Frame", { BackgroundColor3 = PAL.panel, BackgroundTransparency = 0.1, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.new(0, 64, 0.64, 0), ZIndex = 3 }, mapUI)
round(sBox, 12); stroke(sBox, PAL.edge, 1.5)
new("UISizeConstraint", { MinSize = Vector2.new(64, 290) }, sBox)
new("TextLabel", { BackgroundTransparency = 1, Text = "СЛОЙ Y", Font = Enum.Font.Code, TextSize = 11, TextColor3 = PAL.cyan, Position = UDim2.fromOffset(0, 4), Size = UDim2.new(1, 0, 0, 14), ZIndex = 4 }, sBox)
local layerBox = inputStyle(new("TextBox", { Text = "0", ClearTextOnFocus = true, Font = Enum.Font.Code, TextSize = 14, Position = UDim2.fromOffset(4, 20), Size = UDim2.new(1, -8, 0, 28), ZIndex = 4 }, sBox))
local up10 = button(sBox, "+10", PAL.slate, PAL.white, { Position = UDim2.fromOffset(4, 52), Size = UDim2.new(1, -8, 0, 26), TextSize = 12, ZIndex = 4 })
local up1 = button(sBox, "+1", PAL.slate, PAL.white, { Position = UDim2.fromOffset(4, 82), Size = UDim2.new(1, -8, 0, 26), TextSize = 12, ZIndex = 4 })
local dn10 = button(sBox, "−10", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 4, 1, -4), Size = UDim2.new(1, -8, 0, 26), TextSize = 12, ZIndex = 4 })
local dn1 = button(sBox, "−1", PAL.slate, PAL.white, { AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 4, 1, -34), Size = UDim2.new(1, -8, 0, 26), TextSize = 12, ZIndex = 4 })
local track = new("Frame", { BackgroundColor3 = PAL.slate, AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 114), Size = UDim2.new(0, 24, 1, -178), ZIndex = 4 }, sBox)
round(track, 8)
local knob = new("Frame", { BackgroundColor3 = PAL.yellow, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.fromOffset(40, 20), ZIndex = 5 }, track)
round(knob, 6); stroke(knob, Color3.fromRGB(120, 90, 10), 1.5)

-- нижняя панель
local mHint = new("TextLabel", {
	BackgroundTransparency = 1, Text = "1 палец — двигать · 2 пальца — масштаб · справа — слой", Font = Enum.Font.RobotoMono,
	TextSize = 11, TextColor3 = PAL.white, TextStrokeTransparency = 0.3, AnchorPoint = Vector2.new(0.5, 1),
	Position = UDim2.new(0.5, 0, 1, -62), Size = UDim2.new(0.9, 0, 0, 16), ZIndex = 3,
}, mapUI)
local mBottom = new("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -10), Size = UDim2.new(0.8, 0, 0, 46), ZIndex = 3 }, mapUI)
new("UISizeConstraint", { MaxSize = Vector2.new(460, 46) }, mBottom)
new("UIListLayout", { FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }, mBottom)
local mSel = button(mBottom, "✓ ВЫБРАТЬ", PAL.green, PAL.ink, { Size = UDim2.new(0.3, -5, 1, 0), TextSize = 13, ZIndex = 3, LayoutOrder = 1 })
local mFloor = button(mBottom, "⤓ К ПОЛУ", PAL.slate, PAL.white, { Size = UDim2.new(0.25, -5, 1, 0), TextSize = 12, ZIndex = 3, LayoutOrder = 2 })
local mMe = button(mBottom, "◉ НА МНЕ", PAL.slate, PAL.white, { Size = UDim2.new(0.25, -5, 1, 0), TextSize = 12, ZIndex = 3, LayoutOrder = 3 })
local mCancel = button(mBottom, "✕", PAL.red, PAL.white, { Size = UDim2.new(0.2, -5, 1, 0), TextSize = 16, ZIndex = 3, LayoutOrder = 4 })

-- сетка с координатами
local gridPool = {}
local function gridItem(i)
	local g = gridPool[i]
	if not g then
		local f = new("Frame", { BorderSizePixel = 0, BackgroundColor3 = PAL.cyan, ZIndex = 2 }, gridFrame)
		local t = new("TextLabel", {
			BackgroundTransparency = 1, Font = Enum.Font.RobotoMono, TextSize = 11, TextColor3 = PAL.cyan, TextTransparency = 0.15,
			TextStrokeTransparency = 0.4, Size = UDim2.fromOffset(80, 14), ZIndex = 2,
		}, gridFrame)
		g = { f = f, t = t }
		gridPool[i] = g
	end
	return g
end
local function updateGrid()
	local used = 0
	local c = workspace.CurrentCamera
	local vs = c.ViewportSize
	local wpp = 2 * map.zoom * math.tan(math.rad(c.FieldOfView / 2)) / math.max(1, vs.Y)
	local raw = wpp * 130
	local p10 = 10 ^ math.floor(math.log10(raw))
	local m = raw / p10
	local mult = m < 1.5 and 1 or (m < 3.5 and 2 or (m < 7.5 and 5 or 10))
	local step = mult * p10
	mScale.Text = string.format("клетка %s студ · высота %d", numstr(step), math.floor(map.zoom))
	if S("grid") then
		local hw, hz = wpp * vs.X / 2, wpp * vs.Y / 2
		local x0, x1 = math.ceil((map.x - hw) / step), math.floor((map.x + hw) / step)
		for i = x0, math.min(x1, x0 + 60) do
			used += 1
			local g, wx = gridItem(used), i * step
			local p = 0.5 + (wx - map.x) / (2 * hw)
			g.f.Visible, g.t.Visible = true, true
			g.f.AnchorPoint = Vector2.new(0.5, 0)
			g.f.Position = UDim2.new(p, 0, 0, 0)
			g.f.Size = UDim2.new(0, (i == 0) and 2 or 1, 1, 0)
			g.f.BackgroundTransparency = (i == 0) and 0.4 or 0.84
			g.t.AnchorPoint = Vector2.new(0, 0)
			g.t.TextXAlignment = Enum.TextXAlignment.Left
			g.t.Position = UDim2.new(p, 3, 0.5, 20)
			g.t.Text = "x" .. numstr(wx)
		end
		local z0, z1 = math.ceil((map.z - hz) / step), math.floor((map.z + hz) / step)
		for i = z0, math.min(z1, z0 + 60) do
			used += 1
			local g, wz = gridItem(used), i * step
			local p = 0.5 + (wz - map.z) / (2 * hz)
			g.f.Visible, g.t.Visible = true, true
			g.f.AnchorPoint = Vector2.new(0, 0.5)
			g.f.Position = UDim2.new(0, 0, p, 0)
			g.f.Size = UDim2.new(1, 0, 0, (i == 0) and 2 or 1)
			g.f.BackgroundTransparency = (i == 0) and 0.4 or 0.84
			g.t.AnchorPoint = Vector2.new(0, 1)
			g.t.TextXAlignment = Enum.TextXAlignment.Left
			g.t.Position = UDim2.new(0, 64, p, -1)
			g.t.Text = "z" .. numstr(wz)
		end
	end
	for i = used + 1, #gridPool do
		gridPool[i].f.Visible = false
		gridPool[i].t.Visible = false
	end
end

-- срез по слою: прячем всё, что начинается выше выбранного слоя
local function applyCut()
	local list = cut.list
	local n = #list
	if n == 0 then return end
	local limit = map.layer - hh + 0.5
	local lo, hi = 0, n
	while lo < hi do
		local mid = math.floor((lo + hi + 1) / 2)
		if list[mid].b <= limit then lo = mid else hi = mid - 1 end
	end
	if lo > cut.k then
		for i = cut.k + 1, lo do
			local p = list[i].p
			if p.Parent then p.LocalTransparencyModifier = 0 end
		end
	elseif lo < cut.k then
		for i = lo + 1, cut.k do
			local p = list[i].p
			if p.Parent then p.LocalTransparencyModifier = 1 end
		end
	end
	cut.k = lo
end

local function setLayer(v)
	v = math.floor(v + 0.5)
	map.layer = v
	if v < map.lo then map.lo = v end
	if v > map.hi then map.hi = v end
	layerBox.Text = tostring(v)
	local f = (v - map.lo) / math.max(1, map.hi - map.lo)
	knob.Position = UDim2.new(0.5, 0, 1 - f, 0)
	applyCut()
end
local function stepLayer(d)
	map.layerF = map.layer + d
	setLayer(map.layerF)
end
holdButton(up1, function() stepLayer(1) end, 0.07)
holdButton(dn1, function() stepLayer(-1) end, 0.07)
holdButton(up10, function() stepLayer(10) end, 0.12)
holdButton(dn10, function() stepLayer(-10) end, 0.12)
layerBox.FocusLost:Connect(function()
	local n = tonumber(layerBox.Text)
	if n then map.layerF = n setLayer(n) else setLayer(map.layer) end
end)

local function buildCache(token)
	local list = {}
	local minB, maxT = math.huge, -math.huge
	local desc = workspace:GetDescendants()
	for i = 1, #desc do
		local d = desc[i]
		if d:IsA("BasePart") and not d:IsA("Terrain") and d.Transparency < 0.95 and not d:IsDescendantOf(fx) then
			local m = d:FindFirstAncestorOfClass("Model")
			if not (m and m:FindFirstChildOfClass("Humanoid")) then
				local cf, s = d.CFrame, d.Size
				local hy = (math.abs(cf.RightVector.Y) * s.X + math.abs(cf.UpVector.Y) * s.Y + math.abs(cf.LookVector.Y) * s.Z) / 2
				local b, t = cf.Position.Y - hy, cf.Position.Y + hy
				list[#list + 1] = { p = d, b = b }
				if b < minB then minB = b end
				if t > maxT then maxT = t end
			end
		end
		if i % 4000 == 0 then
			task.wait()
			if not map.active or map.token ~= token then return end
		end
	end
	table.sort(list, function(a, b) return a.b < b.b end)
	if not map.active or map.token ~= token then return end
	cut.list = list
	cut.k = #list
	local _, hrp = getChar()
	local hy = hrp and hrp.Position.Y or 0
	if #list > 0 then
		map.lo = math.min(math.max(minB - 5, hy - 500), hy - 20)
		map.hi = math.max(math.min(maxT + 5, hy + 800), hy + 20)
	end
	setLayer(map.layer)
end

local function buildMarkers()
	mapMarker = new("Part", {
		Name = "MapMarker", Shape = Enum.PartType.Cylinder, Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false,
		CastShadow = false, Material = Enum.Material.Neon, Color = theme().c1, Transparency = 0.25, Size = Vector3.new(0.3, 10, 10),
	}, fx)
	map.pins = {}
	for _, pt in ipairs(data.points) do
		local b = new("Part", {
			Shape = Enum.PartType.Ball, Size = Vector3.new(2, 2, 2), Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false,
			CastShadow = false, Material = Enum.Material.Neon, Color = PAL.yellow, Position = Vector3.new(pt.x, pt.y - hh + 1, pt.z),
		}, fx)
		local bb = new("BillboardGui", { Size = UDim2.fromOffset(130, 22), StudsOffset = Vector3.new(0, 3, 0), AlwaysOnTop = true, Enabled = S("labels") }, b)
		new("TextLabel", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = pt.name, Font = Enum.Font.Code, TextSize = 13, TextColor3 = PAL.yellow, TextStrokeTransparency = 0.3 }, bb)
		map.pins[#map.pins + 1] = { part = b, bb = bb }
	end
	if target then
		local tp = new("Part", {
			Shape = Enum.PartType.Ball, Size = Vector3.new(2, 2, 2), Anchored = true, CanCollide = false, CanQuery = false, CanTouch = false,
			CastShadow = false, Material = Enum.Material.Neon, Color = PAL.red, Position = Vector3.new(target.X, target.Y - hh + 1, target.Z),
		}, fx)
		local bb = new("BillboardGui", { Size = UDim2.fromOffset(80, 22), StudsOffset = Vector3.new(0, 3, 0), AlwaysOnTop = true }, tp)
		new("TextLabel", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "◎ ЦЕЛЬ", Font = Enum.Font.Code, TextSize = 13, TextColor3 = PAL.red, TextStrokeTransparency = 0.3 }, bb)
		map.pins[#map.pins + 1] = { part = tp, bb = bb }
	end
	local _, hrp = getChar()
	if hrp then
		local bb = new("BillboardGui", { Size = UDim2.fromOffset(60, 22), StudsOffset = Vector3.new(0, 4, 0), AlwaysOnTop = true, Adornee = hrp }, fx)
		new("TextLabel", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "▼ ТЫ", Font = Enum.Font.Code, TextSize = 13, TextColor3 = PAL.white, TextStrokeTransparency = 0.2 }, bb)
		map.youPin = bb
	end
end

local function worldPerPixel()
	local c = workspace.CurrentCamera
	return 2 * map.zoom * math.tan(math.rad(c.FieldOfView / 2)) / math.max(1, c.ViewportSize.Y)
end

local function isPanning()
	for _, d in pairs(drags) do
		if d.kind == "pan" then return true end
	end
	return false
end

local function mapStep(dt)
	-- инерция после свайпа
	if S("inertia") and not isPanning() and (math.abs(map.vx) + math.abs(map.vz)) > 0.05 then
		map.x += map.vx * dt
		map.z += map.vz * dt
		local k = math.exp(-dt * 3.5)
		map.vx *= k
		map.vz *= k
	end
	local c = workspace.CurrentCamera
	local floorY = map.layer - hh
	local pos = Vector3.new(map.x, floorY + map.zoom, map.z)
	c.CameraType = Enum.CameraType.Scriptable
	c.FieldOfView = 40
	c.CFrame = CFrame.lookAt(pos, pos - Vector3.new(0, 1, 0), Vector3.new(0, 0, -1))
	if mapMarker then
		local d = map.zoom * 0.06
		mapMarker.Size = Vector3.new(0.3, d, d)
		mapMarker.CFrame = CFrame.new(map.x, floorY + 0.3, map.z) * CFrame.Angles(0, 0, math.pi / 2)
	end
	for _, pin in ipairs(map.pins) do
		local s = math.max(1, map.zoom * 0.025)
		pin.part.Size = Vector3.new(s, s, s)
		pin.bb.StudsOffset = Vector3.new(0, s * 1.3, 0)
	end
	cross.Visible = S("cross")
	mCoord.Text = string.format("X %d   Z %d", math.floor(map.x + 0.5), math.floor(map.z + 0.5))
	updateGrid()
end

function openMap()
	if map.active then return end
	local _, hrp = getChar()
	if not hrp then return end
	map.active = true
	map.token = map.token + 1
	closeMenu()
	local start = target or hrp.Position
	map.x, map.z = start.X, start.Z
	map.vx, map.vz = 0, 0
	map.zoom = math.clamp(S("startzoom"), 30, S("maxzoom"))
	map.lo, map.hi = start.Y - 60, start.Y + 120
	map.layerF = start.Y
	cut.list, cut.k = {}, 0
	local c = workspace.CurrentCamera
	map.prevType, map.prevCF, map.prevFov = c.CameraType, c.CFrame, c.FieldOfView
	-- отключаем управление персонажем и хотбар
	map.controls = nil
	pcall(function()
		local pm = lp.PlayerScripts:FindFirstChild("PlayerModule")
		if pm then
			map.controls = require(pm):GetControls()
			map.controls:Disable()
		end
	end)
	pcall(function()
		map.bpWas = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack)
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	end)
	local th = theme()
	crossStroke.Color = th.c1
	crossDot.BackgroundColor3 = th.c1
	knob.BackgroundColor3 = th.c2
	menuBtn.Visible = false
	gunBtn.Visible = false
	flaskBtn.Visible = false
	chip.Visible = false
	mapUI.Visible = true
	buildMarkers()
	setLayer(map.layerF)
	RunService:BindToRenderStep("PortalGunMap", Enum.RenderPriority.Camera.Value + 1, mapStep)
	local tk = map.token
	task.spawn(buildCache, tk)
	toast("Карта: двигай пальцем · слой = высота", 3)
end

function closeMap()
	if not map.active then return end
	map.active = false
	map.token = map.token + 1
	pcall(function() RunService:UnbindFromRenderStep("PortalGunMap") end)
	for i = cut.k + 1, #cut.list do
		local p = cut.list[i].p
		if p.Parent then p.LocalTransparencyModifier = 0 end
	end
	cut.list, cut.k = {}, 0
	if mapMarker then mapMarker:Destroy() mapMarker = nil end
	for _, pin in ipairs(map.pins) do pin.part:Destroy() end
	map.pins = {}
	if map.youPin then map.youPin:Destroy() map.youPin = nil end
	for _, g in ipairs(gridPool) do g.f.Visible = false g.t.Visible = false end
	local c = workspace.CurrentCamera
	c.FieldOfView = map.prevFov or 70
	c.CameraType = (map.prevType and map.prevType ~= Enum.CameraType.Scriptable) and map.prevType or Enum.CameraType.Custom
	if map.prevCF then c.CFrame = map.prevCF end
	if map.controls then pcall(function() map.controls:Enable() end) end
	pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, map.bpWas ~= false) end)
	drags = {}
	mapUI.Visible = false
	refreshGunUI()
end

-- ввод: перетаскивание карты / ползунка / щипок
local function applyDrag(d, delta)
	if d.kind == "slider" then
		local h = math.max(40, track.AbsoluteSize.Y)
		map.layerF = math.clamp(map.layerF - delta.Y / h * (map.hi - map.lo), map.lo, map.hi)
		setLayer(map.layerF)
	else
		local touches = {}
		for inp, dd in pairs(drags) do
			if dd.kind == "pan" and inp.UserInputType == Enum.UserInputType.Touch then touches[#touches + 1] = dd.last end
		end
		if #touches >= 2 then
			local dist = (touches[1] - touches[2]).Magnitude
			if map.pinch and dist > 5 then
				zoomBy(map.pinch / dist)
			end
			map.pinch = dist
			map.vx, map.vz = 0, 0
		else
			map.pinch = nil
			local wpp = worldPerPixel() * (S("mapspeed") / 100)
			local wx, wz = -delta.X * wpp, -delta.Y * wpp
			map.x += wx
			map.z += wz
			local now = os.clock()
			local dtm = math.max(1 / 120, now - (d.t or now))
			d.t = now
			local maxv = map.zoom * 6
			map.vx = math.clamp(map.vx * 0.5 + (wx / dtm) * 0.5, -maxv, maxv)
			map.vz = math.clamp(map.vz * 0.5 + (wz / dtm) * 0.5, -maxv, maxv)
		end
	end
end
mapInput.InputBegan:Connect(function(input)
	if isPress(input) then
		map.vx, map.vz = 0, 0
		drags[input] = { kind = "pan", last = Vector2.new(input.Position.X, input.Position.Y), t = os.clock() }
	end
end)
track.InputBegan:Connect(function(input)
	if isPress(input) then
		drags[input] = { kind = "slider", last = Vector2.new(input.Position.X, input.Position.Y) }
	end
end)
UIS.InputChanged:Connect(function(input)
	if not map.active then return end
	if input.UserInputType == Enum.UserInputType.Touch then
		local d = drags[input]
		if d then
			local pos = Vector2.new(input.Position.X, input.Position.Y)
			local delta = pos - d.last
			d.last = pos
			applyDrag(d, delta)
		end
	elseif input.UserInputType == Enum.UserInputType.MouseMovement then
		for inp, d in pairs(drags) do
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				applyDrag(d, Vector2.new(input.Delta.X, input.Delta.Y))
			end
		end
	elseif input.UserInputType == Enum.UserInputType.MouseWheel then
		zoomBy(1 - input.Position.Z * 0.1)
	end
end)
UIS.InputEnded:Connect(function(input)
	local d = drags[input]
	if d then
		if d.kind == "pan" and os.clock() - (d.t or 0) > 0.08 then map.vx, map.vz = 0, 0 end
		drags[input] = nil
	end
	map.pinch = nil
end)

jGo.Activated:Connect(function()
	local x, z = tonumber(jX.Text), tonumber(jZ.Text)
	if x and z then
		map.x, map.z = x, z
		map.vx, map.vz = 0, 0
	else
		toast("Введи числа X и Z")
	end
end)
jTgt.Activated:Connect(function()
	if target then
		map.x, map.z = target.X, target.Z
		map.vx, map.vz = 0, 0
		map.layerF = target.Y
		setLayer(map.layerF)
	else
		toast("Цель ещё не выбрана")
	end
end)
mSel.Activated:Connect(function()
	local v = Vector3.new(map.x, map.layer, map.z)
	closeMap()
	setTarget(v)
	openMenu("point")
	toast("Точка выбрана — жми «Запустить портал»", 3)
end)
mCancel.Activated:Connect(function()
	closeMap()
	openMenu("point")
end)
mMe.Activated:Connect(function()
	local _, hrp = getChar()
	if hrp then
		map.x, map.z = hrp.Position.X, hrp.Position.Z
		map.vx, map.vz = 0, 0
		map.layerF = hrp.Position.Y
		setLayer(map.layerF)
	end
end)
mFloor.Activated:Connect(function()
	local params = rayParams()
	local origin = Vector3.new(map.x, map.layer - hh + 3, map.z)
	local r = workspace:Raycast(origin, Vector3.new(0, -600, 0), params)
	if r then
		map.layerF = r.Position.Y + hh
		setLayer(map.layerF)
	else
		toast("Пол под этим слоем не найден")
	end
end)

----------------------------------------------------------------------
-- ЗАПУСК
----------------------------------------------------------------------
local function onCharacter(char)
	local ok, err = pcall(function()
		local hum = char:WaitForChild("Humanoid", 10)
		local hrp = char:WaitForChild("HumanoidRootPart", 10)
		if hum and hrp then
			hh = (hum.RigType == Enum.HumanoidRigType.R6) and 3 or (hum.HipHeight + hrp.Size.Y / 2)
		end
		gunEquipped = false
		refreshGunUI()
		task.wait(0.4)
		giveToolSafe()
	end)
	if not ok then
		warn("[PortalGun] ошибка при появлении персонажа: " .. tostring(err))
		__showFatal(err)
	end
end
lp.CharacterRemoving:Connect(function()
	pendAction = "cancel"
	Ship.release()
	if map.active then closeMap() end
	closeMenu()
	closeAllPortals()
	gunEquipped = false
	refreshGunUI()
end)
lp.CharacterAdded:Connect(onCharacter)
if lp.Character then task.spawn(onCharacter, lp.Character) end

menuBtn.Visible = false
refreshGunUI()
if S("hidebp") then pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false) end) end

-- сторож: если пушка пропала (игра чистит рюкзак, респавн и т.п.) — выдаём заново
task.spawn(function()
	while true do
		task.wait(2)
		local c = getChar()
		if c then pcall(giveFlask, true) end
		if c and not giving then
			local bp = lp:FindFirstChildOfClass("Backpack")
			local p = toolRef and toolRef.Parent
			if not (p and (p == c or p == bp)) then
				giveToolSafe()
			end
		end
	end
end)

__printf("запущено: интерфейс готов, пушка выдаётся в рюкзак")
__boot("◢ PortalGun v6: готов ✓  (кнопка «ПУШКА» справа)", Color3.fromRGB(46, 242, 140), 8)

end, function(e) return debug.traceback(tostring(e), 2) end)

if not __ok then
	warn("[PortalGun] ОШИБКА ЗАПУСКА: " .. tostring(__err))
	__showFatal(__err)
end
