let prj = new Project('kha-fileexplorer-extension');

switch (platform) {
	case 'flash':
		prj.addSources('backend/air');
		break;
	case 'debug_html5':
		prj.addSources('backend/debug_html5');
		break;
	case 'html5':
		prj.addSource('backend/html5');
		break;
	case 'windows':
	case 'linux':
		prj.addSources('backend/kore');
		break;
	default:
		prj.addSources('backend/empty');
		break;
}

resolve(prj);
