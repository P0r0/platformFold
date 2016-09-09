.class public Lcom/baidu/android/pushservice/PushServiceReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/PushServiceReceiver$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushServiceReceiver;->a:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const/16 v1, 0x20

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v0

    if-ge v0, v1, :cond_9

    :goto_8
    return-object p2

    :cond_9
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.android.pushservice.CommandService"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "command_type"

    const-string v1, "reflect_receiver"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushServiceReceiver;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushServiceReceiver;->a:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/android/pushservice/ae;

    invoke-direct {v1, p0}, Lcom/baidu/android/pushservice/ae;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;)V
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "\u8bf7\u63d2\u5165SD\u5361"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    if-eqz p1, :cond_1c

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "baidu/pushservice/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< download url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/richmedia/l$a;->a:Lcom/baidu/android/pushservice/richmedia/l$a;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/richmedia/m;->a(Lcom/baidu/android/pushservice/richmedia/l$a;Ljava/lang/String;)Lcom/baidu/android/pushservice/richmedia/l;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/richmedia/l;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/richmedia/l;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/richmedia/l;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/richmedia/l;->d:Ljava/lang/String;

    new-instance v1, Lcom/baidu/android/pushservice/richmedia/a;

    new-instance v2, Lcom/baidu/android/pushservice/PushServiceReceiver$a;

    invoke-direct {v2, p0, p1}, Lcom/baidu/android/pushservice/PushServiceReceiver$a;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/baidu/android/pushservice/richmedia/a;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/richmedia/o;Lcom/baidu/android/pushservice/richmedia/l;)V

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/richmedia/a;->start()V

    goto/16 :goto_1c
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "method"

    const-string v2, "com.baidu.android.pushservice.action.notification.ARRIVED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_title"

    iget-object v2, p2, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_content"

    iget-object v2, p2, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_extra_custom_content"

    iget-object v2, p2, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.RECEIVE"

    iget-object v2, p2, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/PushServiceReceiver;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/baidu/android/pushservice/PushServiceReceiver;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/PushServiceReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/baidu/android/pushservice/PushServiceReceiver;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V
    .registers 13

    const/4 v7, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.media.CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "public_msg"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set click broadcast, pkgname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.baidu.android.pushservice.action.media.CLICK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.baidu.android.pushservice.action.media.DELETE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "public_msg"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v7, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x22b8

    iget-object v5, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    const-string v6, "\u5bcc\u5a92\u4f53\u6d88\u606f\uff1a\u70b9\u51fb\u540e\u4e0b\u8f7d\u4e0e\u67e5\u770b"

    invoke-static {p0, v4, v5, v6, v3}, Lcom/baidu/android/pushservice/h;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v3

    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v1, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_e

    const-string v2, "PushServiceReceiver"

    const-string v3, "showAdvertiseNotifiation pkgName is invalid"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.baidu.android.pushservice.action.adnotification.ADDELETE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v2, "app_id"

    move-object/from16 v0, p6

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msg_id"

    move-object/from16 v0, p5

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ad_msg"

    move-object/from16 v0, p4

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "action_type"

    const-string v4, "05"

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "click_url"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "advertise_Style"

    move-object/from16 v0, p4

    iget v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_59} :catch_134

    move-result v2

    :goto_5a
    const/high16 v4, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, p4

    iget v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_77

    move-object/from16 v0, p4

    iget v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_77

    move-object/from16 v0, p4

    iget v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_153

    :cond_77
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v2, "app_id"

    move-object/from16 v0, p6

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msg_id"

    move-object/from16 v0, p5

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ad_msg"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "action_type"

    const-string v4, "01"

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "click_url"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseClickUrl:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "advertise_Style"

    move-object/from16 v0, p4

    iget v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p4

    iget v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseLargeIconUrl:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseSmallIconUrl:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/baidu/android/pushservice/a/b/c;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const-string v2, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show normal advertise  notification, msgid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  appid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Description = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  largeIconUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseLargeIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  smallIconUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseSmallIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pushadvertise:  show normal  advertise notification"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_d

    :catch_134
    move-exception v4

    const-string v6, "PushServiceReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :cond_153
    move-object/from16 v0, p4

    iget v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_161

    move-object/from16 v0, p4

    iget v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_d

    :cond_161
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "app_id"

    move-object/from16 v0, p6

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "msg_id"

    move-object/from16 v0, p5

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ad_msg"

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "action_type"

    const-string v5, "01"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "click_url"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseClickUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "advertise_Style"

    move-object/from16 v0, p4

    iget v5, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "app_id"

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "msg_id"

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "ad_msg"

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "action_type"

    const-string v6, "02"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "click_url"

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureClickUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "advertise_Style"

    move-object/from16 v0, p4

    iget v6, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "app_id"

    move-object/from16 v0, p6

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "msg_id"

    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "ad_msg"

    move-object/from16 v0, p4

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "action_type"

    const-string v7, "03"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "click_url"

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseDetailClickUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "advertise_Style"

    move-object/from16 v0, p4

    iget v7, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "app_id"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "msg_id"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "ad_msg"

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "action_type"

    const-string v9, "04"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "click_url"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseDownloadClickUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "advertise_Style"

    move-object/from16 v0, p4

    iget v9, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p4

    iget v7, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_2ff

    const/4 v9, 0x4

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseLargeIconUrl:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseSmallIconUrl:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureUrl:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v0, v5, [Landroid/content/Intent;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    aput-object v2, v17, v5

    const/4 v2, 0x1

    aput-object v4, v17, v2

    move-object v10, v3

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v17}, Lcom/baidu/android/pushservice/a/b/c;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V

    :cond_28a
    :goto_28a
    const-string v2, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show advanced advertise  notification, msgid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  appid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Description = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  largeIconUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseLargeIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  smallIconUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseSmallIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bigPictureUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pushadvertise:  show big picture  advertise notification"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_d

    :cond_2ff
    move-object/from16 v0, p4

    iget v7, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const/4 v9, 0x5

    if-ne v7, v9, :cond_28a

    const/4 v9, 0x5

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseLargeIconUrl:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseSmallIconUrl:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureUrl:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v0, v7, [Landroid/content/Intent;

    move-object/from16 v17, v0

    const/4 v7, 0x0

    aput-object v2, v17, v7

    const/4 v2, 0x1

    aput-object v5, v17, v2

    const/4 v2, 0x2

    aput-object v6, v17, v2

    const/4 v2, 0x3

    aput-object v4, v17, v2

    move-object v10, v3

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v17}, Lcom/baidu/android/pushservice/a/b/c;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V

    goto/16 :goto_28a
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v9, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.privatenotification.CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "public_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.privatenotification.DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "public_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v0, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iget v0, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mNotificationBuilder:I

    if-nez v0, :cond_a0

    iget v1, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mNotificationBuilder:I

    iget v2, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mNotificationBasicStyle:I

    iget-object v3, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    iget-object v4, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/baidu/android/pushservice/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    :goto_95
    iput-object v7, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v8, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p4, v9, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {p0, p1, p3}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;)V

    return-void

    :cond_a0
    iget v0, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mNotificationBuilder:I

    iget-object v1, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    iget-object v2, p3, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v5}, Lcom/baidu/android/pushservice/h;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    goto :goto_95
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const/16 v5, 0x24

    const/4 v1, 0x1

    const/4 v11, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_41
    const-string v1, "PushServiceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start PushSerevice for by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const-string v3, "com.baidu.android.pushservice.action.notification.SHOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const-string v0, "pushService_package_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "service_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "notify_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "app_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "baidu_message_body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    const-string v0, "baidu_message_secur_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    const-string v0, "baidu_message_type"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "message_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    if-eqz v6, :cond_a7

    if-eqz v5, :cond_a7

    if-ne v10, v11, :cond_f8

    :cond_a7
    const-string v3, "PushServiceReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extra not valid, servicePkgName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " serviceName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " pMsg==null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " msgBody==null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v6, :cond_f4

    move v0, v1

    :goto_d1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " checkInfo==null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v5, :cond_f6

    :goto_dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :cond_f4
    move v0, v2

    goto :goto_d1

    :cond_f6
    move v1, v2

    goto :goto_dd

    :cond_f8
    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/util/q;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    const-string v0, "PushServiceReceiver"

    const-string v1, " receive message duplicated !"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :cond_107
    new-instance v0, Lcom/baidu/android/pushservice/ac;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/android/pushservice/ac;-><init>(Lcom/baidu/android/pushservice/PushServiceReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/ac;->start()V

    goto/16 :goto_5c

    :cond_113
    const-string v1, "com.baidu.android.pushservice.action.media.CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    const-string v0, "PushServiceReceiver"

    const-string v1, "Rich media notification clicked"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_127
    const-string v1, "public_msg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_137

    const-string v0, "public_msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/PublicMsg;
    :try_end_137
    .catch Ljava/lang/ClassCastException; {:try_start_127 .. :try_end_137} :catch_13c

    :cond_137
    invoke-static {p1, v0}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;)V

    goto/16 :goto_5c

    :catch_13c
    move-exception v0

    const-string v0, "PushServiceReceiver"

    const-string v1, "Rich media notification clicked, parse pMsg exception"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :cond_146
    const-string v1, "com.baidu.android.pushservice.action.advertise.notification.SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/android/pushservice/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/android/pushservice/ad;-><init>(Lcom/baidu/android/pushservice/PushServiceReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5c

    :cond_15d
    const-string v1, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b2

    const-string v0, "PushServiceReceiver"

    const-string v1, "Handle ADNotification Click Action"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "click_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/a/a/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1e9

    const-string v1, "pushadvertise:  open click url"

    invoke-static {v1, p1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :try_start_1b1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_258

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1e9} :catch_265

    :cond_1e9
    :goto_1e9
    :try_start_1e9
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v0, v3, :cond_284

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "collapse"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_202
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_208} :catch_293

    :goto_208
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "msg_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const-string v0, "pushadvertise:  cancel advertise notification"

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-static {p1, v0}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lt v1, v5, :cond_5c

    const-string v1, "com.baidu.android.pushservice.PushService"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "PushServiceReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLICK  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5c

    :cond_258
    :try_start_258
    const-string v0, "com.baidu.android.pushservice.action.adnotification.ADCLICKFAILED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "PushServiceReceiver"

    const-string v1, "There is no borwer on this phone!"

    invoke-static {v0, v1, p1}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_264} :catch_265

    goto :goto_1e9

    :catch_265
    move-exception v0

    const-string v1, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e9

    :cond_284
    :try_start_284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "collapsePanels"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_290} :catch_293

    move-result-object v0

    goto/16 :goto_202

    :catch_293
    move-exception v0

    const-string v1, "PushServiceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_208

    :cond_2b2
    const-string v1, "com.baidu.android.pushservice.action.adnotification.ADDELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-static {p1, v0}, Lcom/baidu/android/pushservice/util/q;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lt v1, v5, :cond_5c

    const-string v1, "com.baidu.android.pushservice.PushService"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "PushServiceReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5c
.end method
