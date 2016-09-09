.class Lcom/duoku/platform/util/i$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/duoku/platform/push/e;

.field final synthetic c:Lcom/duoku/platform/util/i;


# direct methods
.method constructor <init>(Lcom/duoku/platform/util/i;)V
    .registers 2

    .prologue
    .line 376
    iput-object p1, p0, Lcom/duoku/platform/util/i$c;->c:Lcom/duoku/platform/util/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 384
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/duoku/platform/util/i$c;->a:Landroid/content/Context;

    .line 385
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/duoku/platform/push/e;

    iput-object v0, p0, Lcom/duoku/platform/util/i$c;->b:Lcom/duoku/platform/push/e;

    .line 386
    iget-object v0, p0, Lcom/duoku/platform/util/i$c;->c:Lcom/duoku/platform/util/i;

    iget-object v1, p0, Lcom/duoku/platform/util/i$c;->b:Lcom/duoku/platform/push/e;

    invoke-virtual {v1}, Lcom/duoku/platform/push/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/i;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 393
    if-nez p1, :cond_3

    .line 398
    :goto_2
    return-void

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/util/i$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;)Lcom/duoku/platform/push/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/util/i$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/util/i$c;->b:Lcom/duoku/platform/push/e;

    invoke-virtual {v0, v1, p1, v2}, Lcom/duoku/platform/push/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/duoku/platform/push/e;)V

    goto :goto_2
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i$c;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/util/i$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
