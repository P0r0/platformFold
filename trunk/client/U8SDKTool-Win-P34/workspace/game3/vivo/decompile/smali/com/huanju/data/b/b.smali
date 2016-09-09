.class public final Lcom/huanju/data/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/huanju/data/b/c/b;

.field private d:Lcom/huanju/data/b/b/a;

.field private e:Lcom/huanju/data/b/a/a;

.field private f:Lcom/huanju/data/b/d/b;

.field private g:Lcom/huanju/data/net/e;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjTransactionProxy"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    new-instance v0, Lcom/huanju/data/b/d;

    invoke-direct {v0, p0}, Lcom/huanju/data/b/d;-><init>(Lcom/huanju/data/b/b;)V

    iput-object v0, p0, Lcom/huanju/data/b/b;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huanju/data/b/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/huanju/data/b/b;)Lcom/huanju/data/net/e;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    return-object v0
.end method

.method private c()V
    .registers 4

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "#########init###########"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/b/b;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/huanju/data/net/e;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/net/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-direct {p0}, Lcom/huanju/data/b/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/huanju/data/b/b;->a()V

    :cond_2a
    new-instance v0, Lcom/huanju/data/b/c/b;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/b/b;->c:Lcom/huanju/data/b/c/b;

    new-instance v0, Lcom/huanju/data/b/b/a;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/b/b;->d:Lcom/huanju/data/b/b/a;

    new-instance v0, Lcom/huanju/data/b/a/a;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/b/b;->e:Lcom/huanju/data/b/a/a;

    invoke-direct {p0}, Lcom/huanju/data/b/b;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "------doActive--------"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/b/c/a;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/b/b;->c:Lcom/huanju/data/b/c/b;

    invoke-direct {v0, v1, v2}, Lcom/huanju/data/b/c/a;-><init>(Landroid/content/Context;Lcom/huanju/data/b/c/b;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->c:Lcom/huanju/data/b/c/b;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/d;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/e;)V

    invoke-virtual {v0}, Lcom/huanju/data/b/c;->b()V

    iget-object v0, p0, Lcom/huanju/data/b/b;->e:Lcom/huanju/data/b/a/a;

    invoke-virtual {v0}, Lcom/huanju/data/b/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/huanju/data/b/b;->e()V

    :cond_28
    return-void
.end method

.method private e()V
    .registers 4

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "------sendInstalledAppList--------"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/b/a/d;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/b/b;->e:Lcom/huanju/data/b/a/a;

    invoke-direct {v0, v1, v2}, Lcom/huanju/data/b/a/d;-><init>(Landroid/content/Context;Lcom/huanju/data/b/a/a;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->e:Lcom/huanju/data/b/a/a;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/d;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/e;)V

    invoke-virtual {v0}, Lcom/huanju/data/b/c;->b()V

    return-void
.end method

.method private f()Z
    .registers 2

    const-string v0, "0"

    invoke-static {v0}, Lcom/huanju/data/a/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 4

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "------requestCloudSwitcher--------"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/b/b;->f:Lcom/huanju/data/b/d/b;

    if-nez v0, :cond_14

    new-instance v0, Lcom/huanju/data/b/d/b;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/b/b;->f:Lcom/huanju/data/b/d/b;

    :cond_14
    new-instance v0, Lcom/huanju/data/b/d/a;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/b/b;->f:Lcom/huanju/data/b/d/b;

    invoke-direct {v0, v1, v2}, Lcom/huanju/data/b/d/a;-><init>(Landroid/content/Context;Lcom/huanju/data/b/d/b;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/e;)V

    invoke-virtual {v0}, Lcom/huanju/data/b/c;->b()V

    return-void
.end method

.method public a(J)V
    .registers 7

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "------sendStartTime--------"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/huanju/data/b/b/b;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/data/b/b;->d:Lcom/huanju/data/b/b/a;

    iget-object v3, p0, Lcom/huanju/data/b/b;->e:Lcom/huanju/data/b/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/huanju/data/b/b/b;-><init>(Landroid/content/Context;Lcom/huanju/data/b/b/a;Lcom/huanju/data/b/a/a;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/b/b;->a(Lcom/huanju/data/net/e;)V

    invoke-virtual {v0}, Lcom/huanju/data/b/b/b;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "------onDownloadEvent--------"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Lcom/huanju/data/b/e/b;

    iget-object v1, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/huanju/data/b/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-virtual {v0, v1}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/e;)V

    invoke-virtual {v0}, Lcom/huanju/data/b/c;->b()V

    :cond_1c
    return-void
.end method

.method public b()V
    .registers 3

    sget-object v0, Lcom/huanju/data/b/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "#########HjMonitorProxyRelease###########"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/data/a/f;->a()V

    iget-object v0, p0, Lcom/huanju/data/b/b;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/huanju/data/b/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/huanju/data/b/b;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_19
    iget-object v0, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    invoke-virtual {v0}, Lcom/huanju/data/net/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/b;->g:Lcom/huanju/data/net/e;

    :cond_25
    return-void
.end method
