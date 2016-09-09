.class public Lcom/duoku/platform/ui/entity/d;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/ui/entity/d;->a:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/duoku/platform/ui/entity/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/duoku/platform/ui/entity/d;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/duoku/platform/ui/entity/d;->c:Ljava/util/List;

    .line 42
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/duoku/platform/ui/entity/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/duoku/platform/ui/entity/d;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/duoku/platform/ui/entity/d;->c:Ljava/util/List;

    return-object v0
.end method
