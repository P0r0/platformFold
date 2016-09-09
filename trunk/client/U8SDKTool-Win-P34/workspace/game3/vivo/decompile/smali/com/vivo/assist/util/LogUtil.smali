.class public Lcom/vivo/assist/util/LogUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATION_DEBUG:I = 0x10

.field public static final COMMAND_DEBUG:I = 0x8

.field public static final DISPLAY_LOGIC_DEBUG:I = 0x2

.field public static final MAIN_LOGIC_DEBUG:I = 0x1

.field public static final TOUCH_EVENT_DEBUG:I = 0x4

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xfffff

    sput v0, Lcom/vivo/assist/util/LogUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animation(Ljava/lang/String;)V
    .registers 2

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    const-string v0, "AssistivePoint"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static final command(Ljava/lang/String;)V
    .registers 2

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    const-string v0, "AssistivePoint"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static final d(ILjava/lang/String;)V
    .registers 3

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const-string v0, "AssistivePoint"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static final display(Ljava/lang/String;)V
    .registers 2

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    const-string v0, "AssistivePoint"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static final e(ILjava/lang/String;)V
    .registers 3

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const-string v0, "AssistivePoint"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static final i(ILjava/lang/String;)V
    .registers 3

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const-string v0, "AssistivePoint"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static final mainLogic(Ljava/lang/String;)V
    .registers 2

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    const-string v0, "AssistivePoint"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static final touchEvent(Ljava/lang/String;)V
    .registers 2

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    const-string v0, "AssistivePoint"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static final v(ILjava/lang/String;)V
    .registers 3

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const-string v0, "AssistivePoint"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static final w(ILjava/lang/String;)V
    .registers 3

    sget v0, Lcom/vivo/assist/util/LogUtil;->a:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const-string v0, "AssistivePoint"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method
