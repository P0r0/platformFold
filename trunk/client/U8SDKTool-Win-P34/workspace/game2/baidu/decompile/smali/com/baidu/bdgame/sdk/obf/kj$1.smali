.class final Lcom/baidu/bdgame/sdk/obf/kj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kj;->a(ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kj;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kj$1;->a:Lcom/baidu/bdgame/sdk/obf/kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kj$1;->a:Lcom/baidu/bdgame/sdk/obf/kj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kj;->g()V

    .line 65
    return-void
.end method
