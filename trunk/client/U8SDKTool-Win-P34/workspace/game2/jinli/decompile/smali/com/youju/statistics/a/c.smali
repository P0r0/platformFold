.class public final enum Lcom/youju/statistics/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youju/statistics/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/youju/statistics/a/c;

.field public static final enum b:Lcom/youju/statistics/a/c;

.field public static final enum c:Lcom/youju/statistics/a/c;

.field public static final enum d:Lcom/youju/statistics/a/c;

.field public static final enum e:Lcom/youju/statistics/a/c;

.field private static final synthetic f:[Lcom/youju/statistics/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/youju/statistics/a/c;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/youju/statistics/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/c;->a:Lcom/youju/statistics/a/c;

    new-instance v0, Lcom/youju/statistics/a/c;

    const-string v1, "TWO_G"

    invoke-direct {v0, v1, v3}, Lcom/youju/statistics/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/c;->b:Lcom/youju/statistics/a/c;

    new-instance v0, Lcom/youju/statistics/a/c;

    const-string v1, "THREE_G"

    invoke-direct {v0, v1, v4}, Lcom/youju/statistics/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/c;->c:Lcom/youju/statistics/a/c;

    new-instance v0, Lcom/youju/statistics/a/c;

    const-string v1, "FOUR_G"

    invoke-direct {v0, v1, v5}, Lcom/youju/statistics/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/c;->d:Lcom/youju/statistics/a/c;

    new-instance v0, Lcom/youju/statistics/a/c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/youju/statistics/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/a/c;->e:Lcom/youju/statistics/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youju/statistics/a/c;

    sget-object v1, Lcom/youju/statistics/a/c;->a:Lcom/youju/statistics/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youju/statistics/a/c;->b:Lcom/youju/statistics/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youju/statistics/a/c;->c:Lcom/youju/statistics/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youju/statistics/a/c;->d:Lcom/youju/statistics/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youju/statistics/a/c;->e:Lcom/youju/statistics/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youju/statistics/a/c;->f:[Lcom/youju/statistics/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/youju/statistics/a/c;
    .registers 1

    sget-object v0, Lcom/youju/statistics/a/c;->f:[Lcom/youju/statistics/a/c;

    invoke-virtual {v0}, [Lcom/youju/statistics/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youju/statistics/a/c;

    return-object v0
.end method
