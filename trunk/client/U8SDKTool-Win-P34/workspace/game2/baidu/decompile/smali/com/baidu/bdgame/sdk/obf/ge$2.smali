.class final Lcom/baidu/bdgame/sdk/obf/ge$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/wxpay/IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ge;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ge;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ge;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ge$2;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$2;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->m()V

    .line 173
    return-void
.end method
