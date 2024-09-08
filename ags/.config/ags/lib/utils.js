export function sh(cmd, ...args) {
    cmd = `${cmd} ${args.join(' ')}`;
    return Utils.execAsync(cmd).catch(reason => console.error(`${cmd} - ${reason}`));
}
export function range(stop) {
    return new Array(stop).fill(0).map((_, index) => index);
}
