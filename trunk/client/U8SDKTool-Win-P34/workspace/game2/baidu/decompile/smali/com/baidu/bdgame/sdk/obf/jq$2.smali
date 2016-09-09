.class final Lcom/baidu/bdgame/sdk/obf/jq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jq;->c(J)V
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
    .line 78
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jq$2;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jq$2;->a:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->m()V

    .line 83
    return-void
.end method
