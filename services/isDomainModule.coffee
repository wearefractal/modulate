require 'protege'

isDomainModule = (namespace) -> return (namespace.contains '.')


module.exports = isDomainModule

