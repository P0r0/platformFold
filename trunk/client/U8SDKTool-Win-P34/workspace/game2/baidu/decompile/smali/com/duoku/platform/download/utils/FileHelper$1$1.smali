.class Lcom/duoku/platform/download/utils/FileHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/FileHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/FileHelper$1;

.field private final synthetic b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/FileHelper$1;Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/FileHelper$1$1;->a:Lcom/duoku/platform/download/utils/FileHelper$1;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/FileHelper$1$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/duoku/platform/download/utils/FileHelper$1$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/duoku/platform/download/listener/OnCacheLoadedListener;->onCacheLoad(Z)V

    .line 437
    return-void
.end method
