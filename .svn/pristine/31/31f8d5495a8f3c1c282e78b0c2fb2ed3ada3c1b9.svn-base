.class public Lcom/duoku/platform/push/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/duoku/platform/push/c;


# instance fields
.field public a:I

.field private d:Landroid/content/Context;

.field private e:Lcom/duoku/platform/push/b;

.field private f:Landroid/widget/RemoteViews;

.field private g:Lcom/duoku/platform/push/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoku/platform/push/c;->b:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_16

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/push/c;->a:I

    .line 55
    :goto_c
    iput-object p1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/duoku/platform/push/b;

    invoke-direct {v0, p1}, Lcom/duoku/platform/push/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    .line 58
    return-void

    .line 51
    :cond_16
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/push/c;->a:I

    goto :goto_c
.end method

.method private a(Landroid/content/Context;Lcom/duoku/platform/push/e;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 199
    invoke-direct {p0, p1, v0, p2}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/push/e;)V

    .line 210
    :cond_14
    :goto_14
    return-object v0

    .line 201
    :cond_15
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 203
    invoke-direct {p0, p1, v0, p2}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/push/e;)V

    goto :goto_14

    .line 205
    :cond_25
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Lcom/duoku/platform/push/e;Landroid/content/Intent;)V

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;)Lcom/duoku/platform/push/c;
    .registers 3

    .prologue
    .line 62
    sget-object v0, Lcom/duoku/platform/push/c;->c:Lcom/duoku/platform/push/c;

    if-nez v0, :cond_13

    .line 64
    sget-object v1, Lcom/duoku/platform/push/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, Lcom/duoku/platform/push/c;->c:Lcom/duoku/platform/push/c;

    if-nez v0, :cond_12

    .line 68
    new-instance v0, Lcom/duoku/platform/push/c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/push/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/push/c;->c:Lcom/duoku/platform/push/c;

    .line 64
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 72
    :cond_13
    sget-object v0, Lcom/duoku/platform/push/c;->c:Lcom/duoku/platform/push/c;

    return-object v0

    .line 64
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/push/e;)V
    .registers 6

    .prologue
    .line 127
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "75"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "bd_push_click_t"

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 137
    :goto_1c
    return-void

    .line 132
    :cond_1d
    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1c
.end method

.method private a(Landroid/content/Context;Lcom/duoku/platform/push/e;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 142
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v2, "75"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v2, "bd_push_click_t"

    invoke-virtual {v0, p1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 192
    :cond_1e
    :goto_1e
    return-void

    .line 148
    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 152
    :try_start_23
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2b} :catch_6a

    move-result-object v0

    .line 157
    :goto_2c
    if-eqz v0, :cond_7b

    .line 159
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 166
    if-eqz v0, :cond_6d

    .line 168
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 170
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1e

    .line 154
    :catch_6a
    move-exception v0

    move-object v0, v1

    goto :goto_2c

    .line 179
    :cond_6d
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 181
    invoke-direct {p0, p1, p3, p2}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/push/e;)V

    goto :goto_1e

    .line 187
    :cond_7b
    invoke-virtual {p2}, Lcom/duoku/platform/push/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 189
    invoke-direct {p0, p1, p3, p2}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/push/e;)V

    goto :goto_1e
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    const-string v2, "dk_push_logo"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->a(I)V

    .line 99
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->a(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    const-string v3, "dk_notification_layout"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/duoku/platform/push/c;->f:Landroid/widget/RemoteViews;

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/push/c;->f:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    const-string v2, "dk_notification_img_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/duoku/platform/push/c;->f:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    const-string v2, "dk_notification_img_text"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/duoku/platform/push/c;->f:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    const-string v2, "dk_notification_img_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/push/b;->b(Z)V

    .line 105
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-direct {p0, p1, p3}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Lcom/duoku/platform/push/e;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/duoku/platform/push/b;->a(Landroid/content/Intent;Z)V

    .line 106
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->f:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->a(Landroid/widget/RemoteViews;)V

    .line 107
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {v0}, Lcom/duoku/platform/push/b;->a()V

    .line 109
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    iget-object v1, p0, Lcom/duoku/platform/push/c;->d:Landroid/content/Context;

    const-string v2, "dk_push_logo"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->a(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {p3}, Lcom/duoku/platform/push/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->b(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->b(I)V

    .line 118
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/push/b;->b(Z)V

    .line 119
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {v0, v3}, Lcom/duoku/platform/push/b;->c(I)V

    .line 120
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-direct {p0, p1, p3}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Lcom/duoku/platform/push/e;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/duoku/platform/push/b;->a(Landroid/content/Intent;Z)V

    .line 121
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {v0, v3}, Lcom/duoku/platform/push/b;->a(Z)V

    .line 122
    iget-object v0, p0, Lcom/duoku/platform/push/c;->e:Lcom/duoku/platform/push/b;

    invoke-virtual {v0}, Lcom/duoku/platform/push/b;->a()V

    .line 123
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V
    .registers 5

    .prologue
    .line 78
    iput-object p3, p0, Lcom/duoku/platform/push/c;->g:Lcom/duoku/platform/push/e;

    .line 79
    iget v0, p0, Lcom/duoku/platform/push/c;->a:I

    packed-switch v0, :pswitch_data_10

    .line 91
    :goto_7
    return-void

    .line 82
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/push/c;->b(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V

    goto :goto_7

    .line 85
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/push/c;->c(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V

    goto :goto_7

    .line 79
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method
