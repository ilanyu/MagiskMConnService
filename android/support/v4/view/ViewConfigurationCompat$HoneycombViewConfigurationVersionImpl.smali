.class Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;
.super Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
