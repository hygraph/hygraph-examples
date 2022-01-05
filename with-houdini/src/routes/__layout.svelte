<script context="module">
  import { setEnvironment } from '$houdini'
  import env from '../environment'

  setEnvironment(env)
</script>

<slot />
