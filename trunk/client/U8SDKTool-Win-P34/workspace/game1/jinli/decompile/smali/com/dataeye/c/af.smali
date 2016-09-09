.class public Lcom/dataeye/c/af;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/location/LocationManager;

.field private static b:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dataeye/c/ag;

    invoke-direct {v0}, Lcom/dataeye/c/ag;-><init>()V

    sput-object v0, Lcom/dataeye/c/af;->b:Landroid/location/LocationListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "LocationManager mLocationManager.getLowAccuracyLocationInfo"

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/dataeye/c/af;->a:Landroid/location/LocationManager;

    sget-object v0, Lcom/dataeye/c/af;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-array v6, v2, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v6, v7

    const-string v0, ""

    aput-object v0, v6, v8

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    sget-object v1, Lcom/dataeye/c/af;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v6

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/dataeye/c/af;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/dataeye/c/af;->a:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/dataeye/c/af;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_3
    sget-object v0, Lcom/dataeye/c/af;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method
