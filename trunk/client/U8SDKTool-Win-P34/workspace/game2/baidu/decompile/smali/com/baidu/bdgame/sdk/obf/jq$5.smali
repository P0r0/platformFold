.class final Lcom/baidu/bdgame/sdk/obf/jq$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jq;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jq;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jq$5;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jq$5;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/jq;)Lcom/baidu/bdgame/sdk/obf/js;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jq$5;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/jq;)Lcom/baidu/bdgame/sdk/obf/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/js;->dismiss()V

    .line 175
    :cond_11
    return-void
.end method