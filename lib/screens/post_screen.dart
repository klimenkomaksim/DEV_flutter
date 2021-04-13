import 'package:dev_flutter/components/post.dart';
import 'package:flutter/material.dart';
import 'package:dev_flutter/temporary/post_data.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Post(
          title: postData.title,
          coverImageUrl: postData.coverImage,
          tags: postData.tags,
          username: postData.username,
          data: postData.data,
          publishDate: postData.publishDate,
          profileImageUrl: postData.profileImage,
          // title: 'Singing the praises of gdu',
          // coverImageUrl:
          //     'https://res.cloudinary.com/practicaldev/image/fetch/s--ux-gx7Pf--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/3dxk6d69lzdrfsitp5bw.png',
          // profileImageUrl:
          //     'https://res.cloudinary.com/practicaldev/image/fetch/s--w9NUSJ4e--/c_fill,f_auto,fl_progressive,h_90,q_auto,w_90/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/61166/710fa376-1846-4cd5-85b9-80a47db7d2eb.png',
          // username: 'Kyle R. Conway',
          // publishDate: 'Mar 28',
          // data:
          //     '<p>I’m a long-term <em><a href="https://dev.yorhel.nl/ncdu">ncdu</a></em> user, but I recently discovered <em><a href="https://github.com/dundee/gdu">gdu</a></em> which is much faster. This isn’t to say ncdu is bad or undesirable anymore, but for most cases I’ll be replacing <em>ncdu</em> with <em>gdu</em> moving forward for the speed advances alone.</p> <p>If you haven’t seen either of these tools I suggest you check them out. They’re fantastic for quickly identifying directories and files that are taking up the most space on your hard disks via the command line in a more visual way that makes it easy to both find and delete unneeded files and directories.</p> <p><figure><a href="https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-42-43.png"><img src="https://res.cloudinary.com/practicaldev/image/fetch/s--fhaOp-n3--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-42-43-1024x169.png" alt="" loading="lazy"></a><figcaption><em>A sample output looking in a home directory (gdu is shown).</em></figcaption></figure></p> <p>You can navigate into and out of sub-directories that are also calculated and use keyboard shortcuts for all relevant actions.</p> <p><figure><a href="https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-42-56.png"><img src="https://res.cloudinary.com/practicaldev/image/fetch/s--oN7wqB8c--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-42-56-1024x531.png" alt="" loading="lazy"></a><figcaption><em>gdu keyboard shortcuts — accessible from the application by pressing “?”</em></figcaption></figure></p> <p>I’ve shown <em>gdu</em> here because I’m newly enamored by it, but <em>ncdu</em> still has more features even though it is truly slower.</p> <figure><ul> <li><p><a href="https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-46-23-1024x524.png"><img src="https://res.cloudinary.com/practicaldev/image/fetch/s--nkwxB3a2--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-46-23-1024x524.png" alt="" loading="lazy"></a></p></li> <li><p><a href="https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-46-33-1.png"><img src="https://res.cloudinary.com/practicaldev/image/fetch/s--DwReWEdh--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://kylerconway.com/wp-content/uploads/2021/03/Screenshot-from-2021-03-28-10-46-33-1-1024x523.png" alt="" loading="lazy"></a></p></li> </ul> <figcaption><em>note the extra options in ncdu</em></figcaption></figure> <p>At any rate, these are both highly recommended applications. I’ve used them on local computers, remote computers via ssh, mounted drives locally (nfs, smb, etc) and on Linux and BSD. I’m currently using this on TrueNAS Core (FreeBSD) and <a href="https://kylerconway.com/2021/03/24/the-server-that-might-be-truenas-scale/">TrueNAS SCALE (Linux)</a> to generally sort out some erroneous backup strategies I tried over the years.</p> <p>Bottom line: highly recommended.</p>',
          // tags: ['gdu', 'ncdu', 'tools', 'linux'],
        ));
  }
}
