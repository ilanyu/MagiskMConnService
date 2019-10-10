.class public Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;,
        Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/service/DeviceInfoResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:Ljava/lang/String; = "hashed_device_id"

.field public static final d:Ljava/lang/String; = "android_id"

.field private static final i:Ljava/lang/String; = "device_info"

.field private static final j:Ljava/lang/String; = "error_code"

.field private static final k:Ljava/lang/String; = "error_message"

.field private static final l:Ljava/lang/String; = "stacktrace"


# instance fields
.field public final e:Landroid/os/Bundle;

.field public final f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-class v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "device_info"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    const-string v0, "error_code"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    goto :goto_26

    .line 131
    :cond_20
    invoke-static {}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->values()[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_26
    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v0, "error_message"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    const-string v0, "stacktrace"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    .line 41
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->b(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->c(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 43
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->d(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;Lcom/xiaomi/accountsdk/service/DeviceInfoResult$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;-><init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 49
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 51
    :cond_a
    check-cast p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    .line 53
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_1f

    :cond_1b
    iget-object v1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_20

    :goto_1f
    return v2

    .line 55
    :cond_20
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    if-eq v1, v3, :cond_27

    return v2

    .line 56
    :cond_27
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_3a

    :cond_36
    iget-object v1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    if-eqz v1, :cond_3b

    :goto_3a
    return v2

    .line 58
    :cond_3b
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_4e

    :cond_4a
    iget-object p1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    if-eqz p1, :cond_4f

    :goto_4e
    return v2

    :cond_4f
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_37
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 117
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "device_info"

    .line 118
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "error_code"

    .line 119
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    if-nez v1, :cond_14

    const/4 v1, -0x1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->ordinal()I

    move-result v1

    :goto_1a
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_message"

    .line 120
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stacktrace"

    .line 121
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
