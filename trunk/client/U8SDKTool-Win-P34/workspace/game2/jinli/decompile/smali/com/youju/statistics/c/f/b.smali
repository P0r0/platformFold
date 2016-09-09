.class public final enum Lcom/youju/statistics/c/f/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youju/statistics/c/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/youju/statistics/c/f/b;

.field public static final enum b:Lcom/youju/statistics/c/f/b;

.field public static final enum c:Lcom/youju/statistics/c/f/b;

.field public static final enum d:Lcom/youju/statistics/c/f/b;

.field private static final synthetic e:[Lcom/youju/statistics/c/f/b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/youju/statistics/c/f/b;

    const-string v1, "INSERT_NORAMAL"

    invoke-direct {v0, v1, v2}, Lcom/youju/statistics/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/c/f/b;->a:Lcom/youju/statistics/c/f/b;

    new-instance v0, Lcom/youju/statistics/c/f/b;

    const-string v1, "DELETE_OLDEST"

    invoke-direct {v0, v1, v3}, Lcom/youju/statistics/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/c/f/b;->b:Lcom/youju/statistics/c/f/b;

    new-instance v0, Lcom/youju/statistics/c/f/b;

    const-string v1, "NOT_ALLOWED"

    invoke-direct {v0, v1, v4}, Lcom/youju/statistics/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/c/f/b;->c:Lcom/youju/statistics/c/f/b;

    new-instance v0, Lcom/youju/statistics/c/f/b;

    const-string v1, "UPDATE_OLD_RECORD"

    invoke-direct {v0, v1, v5}, Lcom/youju/statistics/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youju/statistics/c/f/b;->d:Lcom/youju/statistics/c/f/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youju/statistics/c/f/b;

    sget-object v1, Lcom/youju/statistics/c/f/b;->a:Lcom/youju/statistics/c/f/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youju/statistics/c/f/b;->b:Lcom/youju/statistics/c/f/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youju/statistics/c/f/b;->c:Lcom/youju/statistics/c/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youju/statistics/c/f/b;->d:Lcom/youju/statistics/c/f/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youju/statistics/c/f/b;->e:[Lcom/youju/statistics/c/f/b;

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

.method public static a()[Lcom/youju/statistics/c/f/b;
    .registers 1

    sget-object v0, Lcom/youju/statistics/c/f/b;->e:[Lcom/youju/statistics/c/f/b;

    invoke-virtual {v0}, [Lcom/youju/statistics/c/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youju/statistics/c/f/b;

    return-object v0
.end method
