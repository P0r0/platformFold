.class public Lcom/vivo/assist/MyWindowManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/vivo/assist/FloatWindowSmallView;

.field private static b:Landroid/view/WindowManager$LayoutParams;

.field private static c:Landroid/view/WindowManager;

.field private static d:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    sget-object v0, Lcom/vivo/assist/MyWindowManager;->c:Landroid/view/WindowManager;

    if-nez v0, :cond_e

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/vivo/assist/MyWindowManager;->c:Landroid/view/WindowManager;

    :cond_e
    sget-object v0, Lcom/vivo/assist/MyWindowManager;->c:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static createBigWindow(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/vivo/assist/MyWindowManager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    return-void
.end method

.method public static createSmallWindow(Landroid/content/Context;)V
    .registers 6

    invoke-static {p0}, Lcom/vivo/assist/MyWindowManager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    if-nez v3, :cond_63

    new-instance v3, Lcom/vivo/assist/FloatWindowSmallView;

    invoke-direct {v3, p0}, Lcom/vivo/assist/FloatWindowSmallView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_55

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    sget v4, Lcom/vivo/assist/FloatWindowSmallView;->viewWidth:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    sget v4, Lcom/vivo/assist/FloatWindowSmallView;->viewHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v3, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v1, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_55
    sget-object v1, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    sget-object v2, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/vivo/assist/FloatWindowSmallView;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v1, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    sget-object v2, Lcom/vivo/assist/MyWindowManager;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_63
    return-void
.end method

.method public static getUsedPercentValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "/proc/meminfo"

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MemTotal:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, "\\D+"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sget-object v0, Lcom/vivo/assist/MyWindowManager;->d:Landroid/app/ActivityManager;

    if-nez v0, :cond_3f

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/vivo/assist/MyWindowManager;->d:Landroid/app/ActivityManager;

    :cond_3f
    sget-object v0, Lcom/vivo/assist/MyWindowManager;->d:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_64} :catch_66

    move-result-object v0

    :goto_65
    return-object v0

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "\u60ac\u6d6e\u7a97"

    goto :goto_65
.end method

.method public static isWindowShowing()Z
    .registers 1

    sget-object v0, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static removeBigWindow(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static removeSmallWindow(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/vivo/assist/MyWindowManager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/assist/MyWindowManager;->a:Lcom/vivo/assist/FloatWindowSmallView;

    :cond_10
    return-void
.end method

.method public static updateUsedPercent(Landroid/content/Context;)V
    .registers 1

    return-void
.end method
