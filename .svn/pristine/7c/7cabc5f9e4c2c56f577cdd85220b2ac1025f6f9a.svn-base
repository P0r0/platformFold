.class public abstract enum Lcom/baidu/mtjstatsdk/BPlusType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mtjstatsdk/BPlusType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO_SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

.field public static final enum SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

.field private static final synthetic b:[Lcom/baidu/mtjstatsdk/BPlusType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12
    new-instance v0, Lcom/baidu/mtjstatsdk/av;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/mtjstatsdk/av;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mtjstatsdk/BPlusType;->SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

    .line 31
    new-instance v0, Lcom/baidu/mtjstatsdk/aw;

    const-string v1, "NO_SERVICE"

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/mtjstatsdk/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mtjstatsdk/BPlusType;->NO_SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

    .line 10
    new-array v0, v4, [Lcom/baidu/mtjstatsdk/BPlusType;

    sget-object v1, Lcom/baidu/mtjstatsdk/BPlusType;->SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mtjstatsdk/BPlusType;->NO_SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/mtjstatsdk/BPlusType;->b:[Lcom/baidu/mtjstatsdk/BPlusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/baidu/mtjstatsdk/BPlusType;->a:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mtjstatsdk/av;)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/BPlusType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static type()Lcom/baidu/mtjstatsdk/BPlusType;
    .registers 6

    .prologue
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-static {}, Lcom/baidu/mtjstatsdk/BPlusType;->values()[Lcom/baidu/mtjstatsdk/BPlusType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v4, :cond_15

    aget-object v0, v3, v1

    .line 61
    iget v5, v0, Lcom/baidu/mtjstatsdk/BPlusType;->a:I

    if-ne v5, v2, :cond_11

    .line 66
    :goto_10
    return-object v0

    .line 60
    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 66
    :cond_15
    sget-object v0, Lcom/baidu/mtjstatsdk/BPlusType;->NO_SERVICE:Lcom/baidu/mtjstatsdk/BPlusType;

    goto :goto_10
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/BPlusType;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/baidu/mtjstatsdk/BPlusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/BPlusType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mtjstatsdk/BPlusType;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/baidu/mtjstatsdk/BPlusType;->b:[Lcom/baidu/mtjstatsdk/BPlusType;

    invoke-virtual {v0}, [Lcom/baidu/mtjstatsdk/BPlusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mtjstatsdk/BPlusType;

    return-object v0
.end method


# virtual methods
.method public abstract startBPlusAnalyze(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/baidu/mtjstatsdk/BPlusType;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
