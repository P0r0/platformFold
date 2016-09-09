.class public Lcom/ta/utdid2/android/utils/SharedPreferenceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 16
    if-eqz p0, :cond_5

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    :cond_5
    return-void
.end method
