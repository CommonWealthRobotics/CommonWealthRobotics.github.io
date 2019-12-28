module.exports = {
  title: 'Common Wealth Robotics',
  tagline: 'Learn Programming with Robots',
  url: 'https://commonwealthrobotics.com',
  baseUrl: '/',
  favicon: 'img/favicon.ico',
  organizationName: 'CommonWealthRobotics',
  projectName: 'CommonWealthRobotics.github.io',
  themeConfig: {
    navbar: {
      title: 'Common Wealth Robotics',
      logo: {
        alt: 'My Site Logo',
        src: 'img/BowlerStudio-Icon.png',
      },
      links: [
        {to: 'docs/bowlerstudio/welcome', label: 'Tutorials', position: 'left'},
        {to: 'blog', label: 'Blog', position: 'left'},
        {
          href: 'https://github.com/CommonWealthRobotics',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Community',
          items: [
            {
              label: 'Hackaday',
              href: 'https://hackaday.io/project/6423-bowlerstudio-a-robotics-development-platform'
            }
          ],
        },
        {
          title: 'Social',
          items: [
            {
              label: 'Gitter',
              href: 'https://gitter.im/CommonWealthRobotics/BowlerStudioDevelopment',
            },
            {
              label: 'GitHub',
              href: 'https://github.com/CommonWealthRobotics',
            },
            {
              label: 'Blog',
              to: 'blog',
            },
          ],
        },
      ],
      copyright: `Copyright © Common Wealth Robotics Co Op. All Rights Reserved. Built with Docusaurus.`,
    },
  },
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl:
            'https://github.com/CommonWealthRobotics/CommonWealthRobotics.github.io/edit/master/website/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
};
