package grest.discovery.types;

typedef Resource = {
	final ?methods:DynamicAccess<Method>;
	final ?resources:DynamicAccess<Resource>;
}
