.class public final Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    }
.end annotation


# static fields
.field public static LDPostCreationDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static LDPostScoreComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 175
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$1;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$1;-><init>()V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->LDPostCreationDateComparator:Ljava/util/Comparator;

    .line 203
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$2;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$2;-><init>()V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->LDPostScoreComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static CopyShareLink(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "contex"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v2, "omp_updateCompleteActivity_copy_share_link"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 280
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_24

    .line 281
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 282
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_23
    return-void

    .line 284
    :cond_24
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 285
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v2, "omp_updateCompleteActivity_copied_text"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 286
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_23
.end method

.method public static calculateScaledSize(IIII)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 10
    .param p0, "containerWidth"    # I
    .param p1, "containerHeight"    # I
    .param p2, "contentWidth"    # I
    .param p3, "contentHeight"    # I

    .prologue
    .line 90
    int-to-float v4, p3

    int-to-float v5, p1

    div-float v0, v4, v5

    .line 91
    .local v0, "heightRatio":F
    int-to-float v4, p2

    int-to-float v5, p0

    div-float v3, v4, v5

    .line 94
    .local v3, "widthRatio":F
    cmpl-float v4, v0, v3

    if-lez v4, :cond_22

    .line 95
    int-to-float v4, p3

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 96
    .local v1, "scaledHeight":I
    int-to-float v4, p2

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 101
    .local v2, "scaledWidth":I
    :goto_1c
    new-instance v4, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    invoke-direct {v4, v2, v1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V

    return-object v4

    .line 98
    .end local v1    # "scaledHeight":I
    .end local v2    # "scaledWidth":I
    :cond_22
    int-to-float v4, p3

    div-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 99
    .restart local v1    # "scaledHeight":I
    int-to-float v4, p2

    div-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .restart local v2    # "scaledWidth":I
    goto :goto_1c
.end method

.method public static convertDiptoPix(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static convertPixtoDip(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pix"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v0, "scale":F
    int-to-float v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static convertStringtoFloat(Ljava/lang/String;)F
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 236
    :goto_4
    return v1

    .line 235
    :catch_5
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static createCommonAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030073

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createToUploadViewTooLongDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "positiveButtonOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 245
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getVideoMaxLengthMs(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 246
    .local v2, "videoMaxLengthMs":J
    invoke-static {p0, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatTimeToMinutesSecondsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "timeMessage":Ljava/lang/String;
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->createCommonAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "omp_videoPreviewFragment_dialog_video_upload_limit_title"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 249
    const-string v4, "omp_videoPreviewFragment_dialog_video_upload_limit_message"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    const-string v4, "omp_videoPreviewFragment_dialog_video_upload_limit_positive"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static fixSpanColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 262
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_b

    instance-of v5, p0, Landroid/text/Spanned;

    if-nez v5, :cond_c

    .line 274
    .end local p0    # "text":Ljava/lang/CharSequence;
    :cond_b
    :goto_b
    return-object p0

    .line 264
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_c
    instance-of v5, p0, Landroid/text/Spanned;

    if-eqz v5, :cond_b

    .line 265
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 266
    .local v2, "s":Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v4, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ForegroundColorSpan;

    .line 267
    .local v3, "spans":[Landroid/text/style/ForegroundColorSpan;
    array-length v5, v3

    :goto_22
    if-ge v4, v5, :cond_47

    aget-object v1, v3, v4

    .line 268
    .local v1, "oldSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 269
    .local v0, "newSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v2, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v2, v1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 270
    invoke-virtual {v2, v1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .end local v0    # "newSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v1    # "oldSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_47
    move-object p0, v2

    .line 272
    goto :goto_b
.end method

.method public static formatTimeToMinutesSecondsString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeMs"    # J

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 115
    div-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 116
    .local v1, "minutes":I
    div-long v4, p1, v8

    rem-long/2addr v4, v6

    long-to-int v2, v4

    .line 117
    .local v2, "seconds":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "omp_minutes"

    invoke-static {p0, v5}, Lmobisocial/util/ResUtil;->getPlurals(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "formattedTime":Ljava/lang/String;
    if-lez v2, :cond_6c

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "omp_seconds"

    invoke-static {p0, v5}, Lmobisocial/util/ResUtil;->getPlurals(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_6c
    return-object v0
.end method

.method public static formatTimestampPretty(J)Ljava/lang/String;
    .registers 14
    .param p0, "timestamp"    # J

    .prologue
    const/4 v10, 0x4

    .line 125
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-nez v7, :cond_a

    .line 126
    const-string v7, "N/A"

    .line 172
    :goto_9
    return-object v7

    .line 128
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v2, v8, p0

    .line 129
    .local v2, "diff":J
    long-to-int v7, v2

    const v8, 0x5265c00

    div-int v1, v7, v8

    .line 130
    .local v1, "dayDiff":I
    long-to-int v7, v2

    const v8, 0x36ee80

    div-int v5, v7, v8

    .line 131
    .local v5, "hoursDiff":I
    long-to-int v7, v2

    div-int/lit16 v6, v7, 0x3e8

    .line 132
    .local v6, "secDiff":I
    if-lt v1, v10, :cond_36

    .line 133
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 135
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "M/d/y"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 139
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_36
    const/4 v7, -0x1

    if-ge v5, v7, :cond_3c

    .line 140
    const-string v7, "the future"

    goto :goto_9

    .line 143
    :cond_3c
    if-nez v1, :cond_9a

    .line 145
    const/16 v7, 0x3c

    if-ge v6, v7, :cond_45

    .line 146
    const-string v7, "just now"

    goto :goto_9

    .line 149
    :cond_45
    const/16 v7, 0x78

    if-ge v6, v7, :cond_4c

    .line 150
    const-string v7, "1 min ago"

    goto :goto_9

    .line 153
    :cond_4c
    const/16 v7, 0xe10

    if-ge v6, v7, :cond_6d

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v8, v6

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " min ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 157
    :cond_6d
    const/16 v7, 0x1c20

    if-ge v6, v7, :cond_74

    .line 158
    const-string v7, "1 hour ago"

    goto :goto_9

    .line 161
    :cond_74
    const v7, 0x15180

    if-ge v6, v7, :cond_9a

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v8, v6

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hours ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9

    .line 166
    :cond_9a
    const/4 v7, 0x1

    if-ne v1, v7, :cond_a1

    .line 167
    const-string v7, "yesterday"

    goto/16 :goto_9

    .line 169
    :cond_a1
    if-ge v1, v10, :cond_b8

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " days ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9

    .line 172
    :cond_b8
    const/4 v7, 0x0

    goto/16 :goto_9
.end method

.method public static formatVideoTime(J)Ljava/lang/String;
    .registers 12
    .param p0, "timeMs"    # J

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 106
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-long v4, p0, v8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    div-long v4, p0, v8

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatVideoTimeToTenthOfSecond(J)Ljava/lang/String;
    .registers 12
    .param p0, "timeMs"    # J

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x3e8

    .line 111
    const-string v0, "%02d:%02d.%1d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-long v4, p0, v6

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    div-long v4, p0, v6

    rem-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    rem-long v4, p0, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 33
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, -0x10000

    .line 35
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 38
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 40
    const/high16 v6, -0x10000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 42
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 43
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    return-object v2
.end method

.method public static getRoundedTopCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pix"    # I

    .prologue
    const/4 v11, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 50
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/high16 v2, -0x10000

    .line 52
    .local v2, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v11, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    .local v5, "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 55
    .local v6, "rectF":Landroid/graphics/RectF;
    int-to-float v7, p1

    .line 56
    .local v7, "roundPx":F
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v0, v11, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .local v0, "bottomRect":Landroid/graphics/Rect;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    invoke-virtual {v1, v11, v11, v11, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 59
    const/high16 v8, -0x10000

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {v1, v6, v7, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    invoke-virtual {v1, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    return-object v3
.end method
