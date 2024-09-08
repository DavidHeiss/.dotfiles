export function sh(cmd: string, ...args: string[]) {
    cmd = `${cmd} ${args.join(' ')}`
    return Utils.execAsync(cmd).catch(reason => console.error(`${cmd} - ${reason}`))
}

export function range(stop: number) {
    return new Array(stop).fill(0).map((_, index) => index);
}