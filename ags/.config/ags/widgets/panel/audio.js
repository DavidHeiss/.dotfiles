const audio = await Service.import('audio');
export default () => Widget.Label().hook(audio.speaker, self => {
    const volume = Math.round(audio.speaker.volume * 100);
    self.label = `Vol: ${volume}%`;
});
