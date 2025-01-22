import { $typst } from "@myriaddreamin/typst.ts/dist/esm/contrib/snippet.mjs";

type Structure = { [k: string]: Structure | Promise<typeof import("*?raw")> };

const radishMetro: Structure = {
  "system-map": {
    background: import("/../src/system-map/background.typ?raw"),
    components: import("/../src/system-map/components.typ?raw"),
    config: import("/../src/system-map/config.typ?raw"),
    fonts: import("/../src/system-map/fonts.typ?raw"),
    legend: import("/../src/system-map/legend.typ?raw"),
    lines: import("/../src/system-map/lines.typ?raw"),
    logo: import("/../src/system-map/logo.typ?raw"),
    main: import("/../src/system-map/main.typ?raw"),
    metro: import("/../src/system-map/metro.typ?raw"),
    radish: import("/../src/system-map/radish.typ?raw"),
  },
  deps: import("/../src/deps.typ?raw"),
};

const radishom: Structure = {
  backends: {
    mod: import("/../submodules/radishom/src/backends/mod.typ?raw"),
    std: import("/../submodules/radishom/src/backends/std.typ?raw"),
  },
  components: {
    common: import("/../submodules/radishom/src/components/common.typ?raw"),
    mod: import("/../submodules/radishom/src/components/mod.typ?raw"),
    std: import("/../submodules/radishom/src/components/std.typ?raw"),
  },
  core: {
    anchor: import("/../submodules/radishom/src/core/anchor.typ?raw"),
    mod: import("/../submodules/radishom/src/core/mod.typ?raw"),
    vec: import("/../submodules/radishom/src/core/vec.typ?raw"),
  },
  deps: import("/../submodules/radishom/src/deps.typ?raw"),
  dir: import("/../submodules/radishom/src/dir.typ?raw"),
  feature: import("/../submodules/radishom/src/feature.typ?raw"),
  lib: import("/../submodules/radishom/src/lib.typ?raw"),
  line: import("/../submodules/radishom/src/line.typ?raw"),
  metro: import("/../submodules/radishom/src/metro.typ?raw"),
  radish: import("/../submodules/radishom/src/radish.typ?raw"),
  radishom: import("/../submodules/radishom/src/radishom.typ?raw"),
  shapes: import("/../submodules/radishom/src/shapes.typ?raw"),
  station: import("/../submodules/radishom/src/station.typ?raw"),
  utils: import("/../submodules/radishom/src/utils.typ?raw"),
};

const assets = {
  "nanjing-metro-logo.svg": import("/../assets/nanjing-metro-logo.svg?raw"),
};

type ShadowedFile = {
  path: string;
  content: string;
};

async function gatherSourcesImpl(sources: Structure, root: string, result: ShadowedFile[]) {
  for (const [k, v] of Object.entries(sources)) {
    const path = `${root}/${k}`;
    if (v instanceof Promise) {
      const fullName = k.includes(".") ? path : path + ".typ";
      result.push({ path: fullName, content: (await v).default });
    } else {
      await gatherSourcesImpl(v, path, result);
    }
  }
}

async function gatherSources(sources: Structure, root: string = "") {
  const result: ShadowedFile[] = [];
  await gatherSourcesImpl(sources, root, result);
  return result;
}

async function addSources(sources: ShadowedFile[]) {
  console.log("add sources", sources);
  for (const file of sources) {
    await $typst.addSource(file.path, file.content);
  }
  console.log("add sources completed");
}

export async function initWorkspace() {
  await addSources(await gatherSources(radishom, "/submodules/radishom/src"));
  await addSources(await gatherSources(radishMetro, "/radish-metro"));
  await addSources(await gatherSources(assets, "/assets"));
}
