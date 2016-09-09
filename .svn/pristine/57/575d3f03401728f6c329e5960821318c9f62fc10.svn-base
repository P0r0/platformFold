.class public abstract Lcom/gionee/gsp/result/GnOperatorType;
.super Ljava/lang/Object;
.source "GnOperatorType.java"


# static fields
.field private static final BASENUMBER:I

.field public static OPENADERROR:I

.field private static RESULTCODEANDDESCMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gionee/gsp/result/GnOperatorType;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    .line 39
    const/4 v0, -0x1

    const-string v1, "sdk\u9519\u8bef\u65e5\u5fd7"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnOperatorType;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnOperatorType;->OPENADERROR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addResultcodeAndDescMap(ILjava/lang/String;)I
    .registers 4
    .param p0, "resultcode"    # I
    .param p1, "resultDesc"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/gionee/gsp/result/GnOperatorType;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v0, p0, 0x0

    return v0
.end method
