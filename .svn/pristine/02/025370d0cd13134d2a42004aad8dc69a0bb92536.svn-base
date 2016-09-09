.class Lcom/duoku/platform/floatview/DKFloatWindow$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    .line 306
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->h(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    :goto_c
    return-void

    .line 312
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->h(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_50

    .line 315
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->h(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_50

    if-eqz v0, :cond_50

    .line 318
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_4b} :catch_4c

    goto :goto_c

    .line 323
    :catch_4c
    move-exception v0

    .line 325
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 328
    :cond_50
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->isDownloadNative:Z

    if-eqz v0, :cond_90

    .line 330
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6dfb\u52a0\u5230\u4e0b\u8f7d\u7ba1\u7406\u5668"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->o()Lcom/duoku/platform/download/utils/DownloadTasks;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->h(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->i(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->j(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow;->k(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v5}, Lcom/duoku/platform/floatview/DKFloatWindow;->l(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v6}, Lcom/duoku/platform/floatview/DKFloatWindow;->m(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/download/utils/DownloadTasks;->startDownloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 335
    :cond_90
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->l(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->b(Lcom/duoku/platform/floatview/DKFloatWindow;)Lcom/duoku/platform/floatview/DKFloatWindow$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    const-string v0, "2"

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->e(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 288
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->f(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;Ljava/lang/String;)V

    .line 295
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->g(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 297
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "70"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_bigbubble_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    return-void

    .line 290
    :cond_46
    const-string v0, "3"

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->e(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 293
    invoke-direct {p0}, Lcom/duoku/platform/floatview/DKFloatWindow$10;->a()V

    goto :goto_28
.end method
