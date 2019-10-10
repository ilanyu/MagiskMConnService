.class Landroid/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ConnectivityManagerCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 2

    .line 138
    invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompatApi24;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I

    move-result p1

    return p1
.end method
