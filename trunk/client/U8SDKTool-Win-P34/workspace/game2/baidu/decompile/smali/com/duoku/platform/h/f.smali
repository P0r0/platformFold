.class public Lcom/duoku/platform/h/f;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/ui/entity/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/ui/entity/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/ui/entity/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/duoku/platform/h/f;->d:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/ui/entity/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/duoku/platform/h/f;->a:Ljava/util/List;

    .line 48
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/ui/entity/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/duoku/platform/h/f;->b:Ljava/util/List;

    .line 56
    return-void
.end method

.method public c(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/ui/entity/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/duoku/platform/h/f;->c:Ljava/util/List;

    .line 65
    return-void
.end method
