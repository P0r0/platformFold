.class Lcom/ltayx/pay/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ltayx/pay/a;


# direct methods
.method private constructor <init>(Lcom/ltayx/pay/a;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/ltayx/pay/d;->a:Lcom/ltayx/pay/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ltayx/pay/a;Lcom/ltayx/pay/d;)V
    .registers 3

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/ltayx/pay/d;-><init>(Lcom/ltayx/pay/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 234
    iget-object v1, p0, Lcom/ltayx/pay/d;->a:Lcom/ltayx/pay/a;

    invoke-static {v1, v0}, Lcom/ltayx/pay/a;->a(Lcom/ltayx/pay/a;Ljava/lang/String;)V

    .line 235
    return-void
.end method
