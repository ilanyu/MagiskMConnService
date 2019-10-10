.class public final enum Lmiui/cloud/common/XDeviceInfo$PhoneType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cloud/common/XDeviceInfo$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field public static final enum b:Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field private static final synthetic d:[Lmiui/cloud/common/XDeviceInfo$PhoneType;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 26
    new-instance v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    const-string v1, "PAD"

    const-string v2, "pad"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmiui/cloud/common/XDeviceInfo$PhoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 27
    new-instance v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    const-string v1, "PHONE"

    const-string v2, "phone"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lmiui/cloud/common/XDeviceInfo$PhoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->b:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Lmiui/cloud/common/XDeviceInfo$PhoneType;

    sget-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->b:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->d:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cloud/common/XDeviceInfo$PhoneType;
    .registers 2

    .line 25
    const-class v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    return-object p0
.end method

.method public static values()[Lmiui/cloud/common/XDeviceInfo$PhoneType;
    .registers 1

    .line 25
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->d:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-virtual {v0}, [Lmiui/cloud/common/XDeviceInfo$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/cloud/common/XDeviceInfo$PhoneType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->c:Ljava/lang/String;

    return-object v0
.end method
