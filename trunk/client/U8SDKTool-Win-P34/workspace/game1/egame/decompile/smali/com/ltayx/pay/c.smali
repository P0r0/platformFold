.class Lcom/ltayx/pay/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ltayx/pay/a;


# direct methods
.method private constructor <init>(Lcom/ltayx/pay/a;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/ltayx/pay/c;->a:Lcom/ltayx/pay/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ltayx/pay/a;Lcom/ltayx/pay/c;)V
    .registers 3

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/ltayx/pay/c;-><init>(Lcom/ltayx/pay/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 220
    return-void
.end method
