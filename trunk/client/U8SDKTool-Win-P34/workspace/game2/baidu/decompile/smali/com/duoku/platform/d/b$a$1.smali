.class Lcom/duoku/platform/d/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/d/b$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/d/b$a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/d/b$a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/d/b$a$1;->a:Lcom/duoku/platform/d/b$a;

    .line 5625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 5631
    iget-object v0, p0, Lcom/duoku/platform/d/b$a$1;->a:Lcom/duoku/platform/d/b$a;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Lcom/duoku/platform/d/b$a;)V

    .line 5632
    iget-object v0, p0, Lcom/duoku/platform/d/b$a$1;->a:Lcom/duoku/platform/d/b$a;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->b(Lcom/duoku/platform/d/b$a;)V

    .line 5633
    iget-object v0, p0, Lcom/duoku/platform/d/b$a$1;->a:Lcom/duoku/platform/d/b$a;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->c(Lcom/duoku/platform/d/b$a;)V

    .line 5634
    return-void
.end method
