.class public Lcom/baidu/android/pushservice/a/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/a/b/c$1;,
        Lcom/baidu/android/pushservice/a/b/c$a;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 16

    const/4 v4, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_11
    const-string v0, "AdvertiseNotificationManager"

    const-string v1, "showNotification the contentTitle is invalid, the notification will not pop Up"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "10"

    invoke-static {p1, p7, v0}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    const-string v0, "click_url"

    invoke-virtual {p7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-static {p1, v0, v1}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3b

    const/16 v0, 0x1f

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_4b
    const-string v2, " "

    :cond_4d
    :goto_4d
    invoke-static {p4}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v4, "null"

    :goto_55
    invoke-static {p5}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v5, "null"

    :goto_5d
    invoke-static {p0}, Lcom/baidu/android/pushservice/a/b/c$a;->a(I)Lcom/baidu/android/pushservice/a/b/c$a;

    move-result-object v0

    move-object v1, p1

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/baidu/android/pushservice/a/b/c;->a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_2c

    :cond_68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_4d

    const/16 v0, 0x3f

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    :cond_77
    move-object v5, p5

    goto :goto_5d

    :cond_79
    move-object v4, p4

    goto :goto_55
.end method

.method public static varargs a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V
    .registers 18

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_10
    const-string v0, "AdvertiseNotificationManager"

    const-string v1, "showNotification the contentTitle is invalid, the notification will not pop Up"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    aget-object v0, p8, v0

    const-string v1, "10"

    invoke-static {p1, v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    aget-object v0, p8, v0

    const-string v1, "click_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-static {p1, v0, v1}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return-void

    :cond_32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_41

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_51
    const-string v2, " "

    :cond_53
    :goto_53
    invoke-static {p6}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-object v7, p8, v1

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/baidu/android/pushservice/a/b/c;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_31

    :cond_66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_53

    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    :cond_76
    invoke-static {p4}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v4, "null"

    :goto_7e
    invoke-static {p5}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v5, "null"

    :goto_86
    invoke-static {p0}, Lcom/baidu/android/pushservice/a/b/c$a;->a(I)Lcom/baidu/android/pushservice/a/b/c$a;

    move-result-object v0

    move-object v1, p1

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/baidu/android/pushservice/a/b/c;->a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V

    goto :goto_31

    :cond_94
    move-object v5, p5

    goto :goto_86

    :cond_96
    move-object v4, p4

    goto :goto_7e
.end method

.method private static a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 13

    invoke-static {p0, p1, p3, p2}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v0

    const-string v1, "msg_id"

    invoke-virtual {p7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p7}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/content/Intent;)V

    invoke-interface {v0, p6}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/a/d;->a()Lcom/baidu/android/pushservice/a/a/d;

    move-result-object v2

    new-instance v3, Lcom/baidu/android/pushservice/a/b/e;

    invoke-direct {v3, p1, v0, v1, p7}, Lcom/baidu/android/pushservice/a/b/e;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/a/b/f;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, p1, v3, v0}, Lcom/baidu/android/pushservice/a/a/d;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/a/a/a$a;[Landroid/net/Uri;)V

    return-void
.end method

.method private static varargs a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V
    .registers 18

    const/4 v2, 0x0

    sget-object v1, Lcom/baidu/android/pushservice/a/b/c$a;->d:Lcom/baidu/android/pushservice/a/b/c$a;

    if-ne v1, p0, :cond_22

    sget-object v1, Lcom/baidu/android/pushservice/a/b/c$a;->d:Lcom/baidu/android/pushservice/a/b/c$a;

    invoke-static {v1, p1, p3, p2}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v2

    :cond_b
    :goto_b
    const/4 v1, 0x0

    aget-object v1, p8, v1

    const-string v3, "msg_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p8

    array-length v3, v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_2d

    aget-object v4, p8, v1

    invoke-interface {v2, v4}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_22
    sget-object v1, Lcom/baidu/android/pushservice/a/b/c$a;->e:Lcom/baidu/android/pushservice/a/b/c$a;

    if-ne v1, p0, :cond_b

    sget-object v1, Lcom/baidu/android/pushservice/a/b/c$a;->e:Lcom/baidu/android/pushservice/a/b/c$a;

    invoke-static {v1, p1, p3, p2}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v2

    goto :goto_b

    :cond_2d
    move-object/from16 v0, p7

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/a/d;->a()Lcom/baidu/android/pushservice/a/a/d;

    move-result-object v8

    new-instance v1, Lcom/baidu/android/pushservice/a/b/d;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Lcom/baidu/android/pushservice/a/b/d;-><init>(Lcom/baidu/android/pushservice/a/b/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v8, p1, v1, v2}, Lcom/baidu/android/pushservice/a/a/d;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/a/a/a$a;[Landroid/net/Uri;)V

    return-void
.end method

.method private static a(Lcom/baidu/android/pushservice/a/b/f;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/baidu/android/pushservice/a/b/f;->a(J)V

    invoke-interface {p0, p1}, Lcom/baidu/android/pushservice/a/b/f;->a(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/baidu/android/pushservice/a/b/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "PE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/a/a/f;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_11
.end method

.method private static b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;
    .registers 16

    const/4 v11, -0x1

    const v10, -0xf0f10

    const v9, -0xfdfdfe

    const/4 v2, 0x1

    const v8, -0x929293

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->b()Z

    move-result v6

    if-eqz v6, :cond_1c

    new-instance v0, Lcom/baidu/android/pushservice/a/b/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-object v0

    :cond_1c
    sget-object v6, Lcom/baidu/android/pushservice/a/b/c$a;->d:Lcom/baidu/android/pushservice/a/b/c$a;

    if-eq p0, v6, :cond_24

    sget-object v6, Lcom/baidu/android/pushservice/a/b/c$a;->e:Lcom/baidu/android/pushservice/a/b/c$a;

    if-ne p0, v6, :cond_2c

    :cond_24
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->c()Z

    move-result v6

    if-eqz v6, :cond_2c

    sget-object p0, Lcom/baidu/android/pushservice/a/b/c$a;->a:Lcom/baidu/android/pushservice/a/b/c$a;

    :cond_2c
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->f()Z

    move-result v6

    if-eqz v6, :cond_70

    const-string v6, "advertise_normal_layout_xiaomi"

    invoke-static {p1, v6}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :cond_43
    :goto_43
    if-nez v0, :cond_54

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "advertise_normal_layout"

    invoke-static {p1, v7}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :cond_54
    sget-object v6, Lcom/baidu/android/pushservice/a/b/c$1;->a:[I

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/a/b/c$a;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_266

    new-instance v0, Lcom/baidu/android/pushservice/a/b/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_65
    if-eqz v1, :cond_6c

    new-instance v0, Lcom/baidu/android/pushservice/a/b/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    invoke-static {v0, p2, p3}, Lcom/baidu/android/pushservice/a/b/c;->a(Lcom/baidu/android/pushservice/a/b/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_70
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->h()Z

    move-result v6

    if-eqz v6, :cond_88

    const-string v6, "advertise_normal_layout_xiaomi_1s"

    invoke-static {p1, v6}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_43

    :cond_88
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->a()Z

    move-result v6

    if-eqz v6, :cond_43

    const-string v6, "advertise_normal_layout_honor"

    invoke-static {p1, v6}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_43

    :pswitch_a0
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a9

    move-object v0, v1

    move v1, v2

    goto :goto_65

    :cond_a9
    new-instance v1, Lcom/baidu/android/pushservice/a/b/h;

    invoke-direct {v1, v0, p1}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v1, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v1, v10}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto :goto_65

    :cond_c0
    invoke-interface {v1, v11}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    const v0, -0x979798

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const/high16 v0, -0x1000000

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto :goto_65

    :pswitch_d1
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_da

    move-object v0, v1

    move v1, v2

    goto :goto_65

    :cond_da
    new-instance v1, Lcom/baidu/android/pushservice/a/b/h;

    invoke-direct {v1, v0, p1}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {v1, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v1, v10}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_65

    :cond_f2
    invoke-interface {v1, v11}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const v0, -0xd4d4d5

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_65

    :pswitch_102
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_10c

    move-object v0, v1

    move v1, v2

    goto/16 :goto_65

    :cond_10c
    new-instance v1, Lcom/baidu/android/pushservice/a/b/h;

    invoke-direct {v1, v0, p1}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-interface {v1, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v1, v10}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_65

    :pswitch_11e
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_128

    move-object v0, v1

    move v1, v2

    goto/16 :goto_65

    :cond_128
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_168

    const-string v1, "advertise_advance_picture_layout_xiaomi"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_262

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_13f
    if-nez v1, :cond_150

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_picture_layout"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :cond_150
    new-instance v2, Lcom/baidu/android/pushservice/a/b/b;

    invoke-direct {v2, v0, v1, p1}, Lcom/baidu/android/pushservice/a/b/b;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_180

    invoke-interface {v2, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v2, v8}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v2, v10}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v2

    move v1, v3

    goto/16 :goto_65

    :cond_168
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_262

    const-string v1, "advertise_advance_picture_layout_honor"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_262

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_13f

    :cond_180
    invoke-interface {v2, v11}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    const v0, -0x979798

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const/high16 v0, -0x1000000

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v2

    move v1, v3

    goto/16 :goto_65

    :pswitch_192
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_19c

    move-object v0, v1

    move v1, v2

    goto/16 :goto_65

    :cond_19c
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1e1

    const-string v1, "advertise_advance_bigstyle_layout_xiaomi"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25f

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1b3
    if-nez v1, :cond_1c4

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :cond_1c4
    new-instance v2, Lcom/baidu/android/pushservice/a/b/a;

    invoke-direct {v2, v0, v1, p1}, Lcom/baidu/android/pushservice/a/b/a;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_25b

    invoke-interface {v2, v11}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    const v0, -0x979798

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const/high16 v0, -0x1000000

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v2

    move v1, v3

    goto/16 :goto_65

    :cond_1e1
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1f9

    const-string v1, "advertise_advance_bigstyle_layout_xiaomi_1s"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25f

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1b3

    :cond_1f9
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_211

    const-string v1, "advertise_advance_bigstyle_layout_bbk"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25f

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1b3

    :cond_211
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->e()Z

    move-result v1

    if-eqz v1, :cond_229

    const-string v1, "advertise_advance_bigstyle_layout_9250"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25f

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1b3

    :cond_229
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->g()Z

    move-result v1

    if-eqz v1, :cond_242

    const-string v1, "advertise_advance_bigstyle_layout_2k"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25f

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1b3

    :cond_242
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_25f

    const-string v1, "advertise_advance_bigstyle_layout_honor"

    invoke-static {p1, v1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_25f

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1b3

    :cond_25b
    move-object v0, v2

    move v1, v3

    goto/16 :goto_65

    :cond_25f
    move-object v1, v4

    goto/16 :goto_1b3

    :cond_262
    move-object v1, v5

    goto/16 :goto_13f

    nop

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_d1
        :pswitch_102
        :pswitch_11e
        :pswitch_192
    .end packed-switch
.end method

.method private static b()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static c()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static d()Z
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bbk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vivo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_26
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static e()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "9250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static f()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static g()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static h()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HM 1S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
