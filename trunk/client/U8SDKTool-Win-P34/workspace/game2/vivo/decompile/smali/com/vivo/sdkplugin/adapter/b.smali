.class final Lcom/vivo/sdkplugin/adapter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->a(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->b(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->c(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;->d(Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/vivo/sdkplugin/adapter/FloatViewConfigData;

    return-object v0
.end method
