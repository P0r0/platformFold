.class Lcom/duoku/platform/ui/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$6;->a:Lcom/duoku/platform/ui/b;

    iput-wide p2, p0, Lcom/duoku/platform/ui/b$6;->b:J

    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2010
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/ui/b$6;->a:Lcom/duoku/platform/ui/b;

    iget-wide v2, p0, Lcom/duoku/platform/ui/b$6;->b:J

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/ui/b;->b(Lcom/duoku/platform/ui/b;J)Z

    move-result v0

    .line 2011
    if-eqz v0, :cond_12

    .line 2013
    iget-object v0, p0, Lcom/duoku/platform/ui/b$6;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 2027
    :goto_11
    return-void

    .line 2019
    :cond_12
    iget-object v0, p0, Lcom/duoku/platform/ui/b$6;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    check-cast v0, Lcom/duoku/platform/download/apapter/DownloadAdapter;

    iget-object v1, p0, Lcom/duoku/platform/ui/b$6;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v1}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/ui/b;)Landroid/widget/ListView;

    move-result-object v1

    iget-wide v2, p0, Lcom/duoku/platform/ui/b$6;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->updateItemView(Landroid/widget/ListView;J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_11

    .line 2023
    :catch_24
    move-exception v0

    .line 2025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
