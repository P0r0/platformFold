.class abstract enum Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "RemovalCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

.field public static final enum EXPIRED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

.field public static final enum EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

.field public static final enum REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

.field public static final enum SIZE:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 691
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$1;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 704
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$2;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1, v3}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 715
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$3;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1, v4}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 726
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$4;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 737
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$5;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v6}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->SIZE:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 686
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->SIZE:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v6

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 686
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 686
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method
