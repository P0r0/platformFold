.class final Lcom/baidu/bdgame/sdk/obf/kg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kg;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kg;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kg$2;->a:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$2;->a:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->e()V

    .line 177
    return-void
.end method
