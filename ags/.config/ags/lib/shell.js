export function sh(cmd, ...args) {
    cmd = `sh -c "${cmd} ${args.join(' ')}"`;
    return Utils.execAsync(cmd).catch(reason => console.error(`${cmd} - ${reason}`));
}
