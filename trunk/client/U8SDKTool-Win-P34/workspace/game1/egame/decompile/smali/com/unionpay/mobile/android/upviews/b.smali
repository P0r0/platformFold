.class public final Lcom/unionpay/mobile/android/upviews/b;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upviews/b$d;,
        Lcom/unionpay/mobile/android/upviews/b$c;,
        Lcom/unionpay/mobile/android/upviews/b$b;,
        Lcom/unionpay/mobile/android/upviews/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebSettings;

.field private b:Landroid/os/Handler;

.field private c:Lcom/unionpay/mobile/android/upviews/b$a;

.field private d:Ljava/util/Timer;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upviews/b$a;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/upviews/b;->a:Landroid/webkit/WebSettings;

    iput-object v1, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    iput-object v1, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->d:Ljava/util/Timer;

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/upviews/b;->e:Z

    iput-object v1, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/b;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->a:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->a:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/unionpay/mobile/android/upviews/b$c;

    invoke-direct {v0, p0, v2}, Lcom/unionpay/mobile/android/upviews/b$c;-><init>(Lcom/unionpay/mobile/android/upviews/b;B)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/unionpay/mobile/android/upviews/b$d;

    invoke-direct {v0, p0, v2}, Lcom/unionpay/mobile/android/upviews/b$d;-><init>(Lcom/unionpay/mobile/android/upviews/b;B)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upviews/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upviews/b;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->d:Ljava/util/Timer;

    return-object p1
.end method

.method private final a()V
    .registers 5

    const-string v0, "<div align=\"center\">%s</div>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "&#x7F51;&#x9875;&#x52A0;&#x8F7D;&#x5931;&#x8D25;&#xFF0C;&#x8BF7;&#x91CD;&#x8BD5;"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/upviews/b;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upviews/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upviews/b;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->d:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/upviews/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upviews/b;->a()V

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    :cond_b
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    :cond_6
    :goto_6
    return v4

    :pswitch_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/upviews/b$a;->t()V

    :cond_10
    const-string v0, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_1a
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/b;->loadUrl(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_32
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upviews/b;->a()V

    :pswitch_35
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3b

    iput-boolean v4, p0, Lcom/unionpay/mobile/android/upviews/b;->e:Z

    :cond_3b
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/upviews/b$a;->u()V

    goto :goto_6

    :pswitch_45
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    instance-of v0, v0, Lcom/unionpay/mobile/android/upviews/b$b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    check-cast v0, Lcom/unionpay/mobile/android/upviews/b$b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/upviews/b$b;->c(Ljava/lang/String;)V

    goto :goto_6

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_35
        :pswitch_35
        :pswitch_32
        :pswitch_45
    .end packed-switch
.end method
