.class final enum Lcom/unicom/dcLoader/Utils$SafeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SafeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unicom/dcLoader/Utils$SafeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unicom/dcLoader/Utils$SafeType;

.field public static final enum IRD_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

.field public static final enum SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unicom/dcLoader/Utils$SafeType;

    const-string v1, "SELF_SAFE"

    invoke-direct {v0, v1, v2}, Lcom/unicom/dcLoader/Utils$SafeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SafeType;->SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    new-instance v0, Lcom/unicom/dcLoader/Utils$SafeType;

    const-string v1, "IRD_SAFE"

    invoke-direct {v0, v1, v3}, Lcom/unicom/dcLoader/Utils$SafeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SafeType;->IRD_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unicom/dcLoader/Utils$SafeType;

    sget-object v1, Lcom/unicom/dcLoader/Utils$SafeType;->SELF_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unicom/dcLoader/Utils$SafeType;->IRD_SAFE:Lcom/unicom/dcLoader/Utils$SafeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unicom/dcLoader/Utils$SafeType;->$VALUES:[Lcom/unicom/dcLoader/Utils$SafeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unicom/dcLoader/Utils$SafeType;
    .registers 2

    const-class v0, Lcom/unicom/dcLoader/Utils$SafeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unicom/dcLoader/Utils$SafeType;

    return-object v0
.end method

.method public static values()[Lcom/unicom/dcLoader/Utils$SafeType;
    .registers 1

    sget-object v0, Lcom/unicom/dcLoader/Utils$SafeType;->$VALUES:[Lcom/unicom/dcLoader/Utils$SafeType;

    invoke-virtual {v0}, [Lcom/unicom/dcLoader/Utils$SafeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unicom/dcLoader/Utils$SafeType;

    return-object v0
.end method