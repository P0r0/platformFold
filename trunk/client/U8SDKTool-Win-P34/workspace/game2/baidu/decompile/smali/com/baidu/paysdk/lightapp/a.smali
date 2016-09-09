.class public Lcom/baidu/paysdk/lightapp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/paysdk/lightapp/a;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/baidu/paysdk/lightapp/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/paysdk/lightapp/a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/lightapp/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/paysdk/lightapp/a;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/paysdk/lightapp/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/paysdk/lightapp/b;

    invoke-direct {v1, p0, p1}, Lcom/baidu/paysdk/lightapp/b;-><init>(Lcom/baidu/paysdk/lightapp/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/lightapp/a;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/paysdk/lightapp/c;

    invoke-direct {v1, p0, p1}, Lcom/baidu/paysdk/lightapp/c;-><init>(Lcom/baidu/paysdk/lightapp/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method
