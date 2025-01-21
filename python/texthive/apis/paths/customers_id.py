from texthive.paths.customers_id.get import ApiForget
from texthive.paths.customers_id.put import ApiForput
from texthive.paths.customers_id.delete import ApiFordelete


class CustomersId(
    ApiForget,
    ApiForput,
    ApiFordelete,
):
    pass
