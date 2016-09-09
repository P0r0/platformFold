.class final Lcom/baidu/bdgame/sdk/obf/go$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/go;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/go;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/go;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/go$4;->a:Lcom/baidu/bdgame/sdk/obf/go;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/go$4;->a:Lcom/baidu/bdgame/sdk/obf/go;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/go;->t()V

    .line 174
    return-void
.end method
