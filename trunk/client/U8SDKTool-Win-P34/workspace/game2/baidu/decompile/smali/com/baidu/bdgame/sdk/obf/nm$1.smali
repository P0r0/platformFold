.class final Lcom/baidu/bdgame/sdk/obf/nm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nm;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nm;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nm$1;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$1;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->j()V

    .line 86
    return-void
.end method
