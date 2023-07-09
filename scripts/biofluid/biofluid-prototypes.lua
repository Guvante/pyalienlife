Biofluid.favorite_foods = {
	['workers-food'] = 100,
	['workers-food-02'] = 500,
	['workers-food-03'] = 1200,
}

Biofluid.PIPE = 1
Biofluid.ROBOPORT = 2
Biofluid.PROVIDER = 3
Biofluid.REQUESTER = 4

Biofluid.connectable = {
	['vessel'] = Biofluid.PIPE,
	['vessel-to-ground'] = Biofluid.PIPE,
	['bioport'] = Biofluid.ROBOPORT,
	['provider-tank'] = Biofluid.PROVIDER,
	['requester-tank'] = Biofluid.REQUESTER,
}

Biofluid.fuel_size = 0
for _, _ in pairs(Biofluid.favorite_foods) do Biofluid.fuel_size = Biofluid.fuel_size + 1 end

Biofluid.biorobots = {
	['gobachov'] = true,
	['huzu'] = true,
	['chorkok'] = true,
}

Biofluid.module_size = 0
for _, _ in pairs(Biofluid.biorobots) do Biofluid.module_size = Biofluid.module_size + 1 end

Biofluid.failure_reasons = {
	['entity-status.no-food'] = 'utility/status_not_working',
	['entity-status.no-creature'] = 'utility/status_not_working',
	['entity-status.no-biofluid-network'] = 'utility/status_yellow',
	['entity-status.full-output'] = 'utility/status_yellow',
	['entity-status.working'] = 'utility/status_working',
}

Biofluid.status_icons = {
	['entity-status.no-food'] = 'utility.fuel_icon',
	['entity-status.no-creature'] = 'no_module_animal',
	['entity-status.no-biofluid-network'] = 'utility.too_far_from_roboport_icon',
	['entity-status.full-output'] = 'utility.warning_icon'
}

Biofluid.bioport_slot_indexes = {
	['guano'] = 1,
	['workers-food'] = 1,
	['workers-food-02'] = 2,
	['workers-food-03'] = 3,
	['gobachov'] = 4,
	['huzu'] = 5,
	['chorkok'] = 6
}

Biofluid.delivery_sizes = {
	['gobachov'] = 1000,
	['huzu'] = 2000,
	['chorkok'] = 5000,
}

Biofluid.min_delivery_size = 999999
for _, v in pairs(Biofluid.delivery_sizes) do
	Biofluid.min_delivery_size = math.min(Biofluid.min_delivery_size, v)
end

Biofluid.tank_size = 10000