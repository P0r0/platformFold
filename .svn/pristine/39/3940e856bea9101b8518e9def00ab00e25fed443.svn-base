.class Lcom/duoku/platform/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/b;->a(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/b;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/b;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    iput p2, p0, Lcom/duoku/platform/b$2;->b:I

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->d(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/StartView;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 580
    iget-object v0, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->d(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/StartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->b()V

    .line 581
    iget-object v0, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->d(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/StartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->c()V

    .line 582
    iget-object v0, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;Lcom/duoku/platform/view/StartView;)V

    .line 583
    iget-object v0, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->e(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/e;->cancel()V

    .line 584
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 585
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/b$2;->b:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onInitComplete(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 592
    :cond_39
    :goto_39
    return-void

    .line 588
    :catch_3a
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method
