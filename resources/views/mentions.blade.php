@extends('layout2')

@section('title')
OCTETLAB - @lang('file.mentions')
@endsection

@section('content')
    <!-- Inner Banner -->
    <div class="inner-banner inner-bg1">
        <div class="container">
            <div class="inner-title text-center">
                <h3> @lang('file.mentions') </h3>
                <ul>
                    <li>
                        <a href="{{ route('accueil') }}"> @lang('file.accueil') </a>
                    </li>
                    <li>
                        <i class='bx bxs-chevrons-right'></i>
                    </li>
                    <li>@lang('file.mentions')</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Inner Banner End -->

   <!-- Terms & Conditions Area -->
   <div class="terms-conditions-area ptb-100">
    <div class="container">
        <div class="single-content">
            <h3>Welcome to Terms & Conditions</h3>
            <p class="text-justify"> 
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis purus arcu. 
                Sed vitae porttitor lectus. Aenean ac odio quis est suscipit vehicula nec eget arcu. 
                Mauris malesuada libero eu ex pharetra, ac aliquam justo vestibulum. Fusce vulputate 
                est sed orci cursus efficitur. Sed volutpat sit amet mauris eget posuere. Donec a mi 
                eu dolor tincidunt pulvinar quis eleifend diam. Vestibulum diam diam, ultricies id cursus
                ac, bibendum ac quam.Donec posuere diam eget consequat facilisis. Vestibulum turpis mauris,
                hendrerit ut risus euismod, maximus iaculis nulla. Quisque tincidunt augue nunc, non pretium 
                nibh consequat vel. Morbi ornare quam neque, nec pharetra magna dapibus quis. Curabitur vehicula ultricies faucibus. 
            </p>
            <p class="text-justify">
                Integer mattis magna at nibh semper vulputate. Nunc eu gravida risus, at lobortis ipsum. Suspendisse tempus
                metus vitae interdum luctus. Pellentesque lectus lorem, laoreet in semper vitae, pellentesque sit amet sapien.
                Morbi ut nibh a massa suscipit posuere. Nam venenatis eget justo id pulvinar. Quisque dignissim eget turpis nec
                pulvinar. Vestibulum fermentum lacus sed dignissim mattis. Aenean porttitor vitae lacus nec pellentesque. Nulla 
                sodales vehicula scelerisque. Vestibulum sed auctor arcu, vitae finibus dolor. Nam ultrices consequat odio at gravida. 
            </p>

            <h3>Welcome to Product Privacy</h3>
            <p class="text-justify"> 
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis purus arcu. 
                Sed vitae porttitor lectus. Aenean ac odio quis est suscipit vehicula nec eget arcu. 
                Mauris malesuada libero eu ex pharetra, ac aliquam justo vestibulum. Fusce vulputate 
                est sed orci cursus efficitur. Sed volutpat sit amet mauris eget posuere. Donec a mi 
                eu dolor tincidunt pulvinar quis eleifend diam. Vestibulum diam diam, ultricies id cursus
                ac, bibendum ac quam.Donec posuere diam eget consequat facilisis. Vestibulum turpis mauris,
                hendrerit ut risus euismod, maximus iaculis nulla. Quisque tincidunt augue nunc, non pretium 
                nibh consequat vel. Morbi ornare quam neque, nec pharetra magna dapibus quis. Curabitur vehicula ultricies faucibus. 
            </p>
            <p class="text-justify">
                Integer mattis magna at nibh semper vulputate. Nunc eu gravida risus, at lobortis ipsum. Suspendisse tempus
                metus vitae interdum luctus. Pellentesque lectus lorem, laoreet in semper vitae, pellentesque sit amet sapien.
                Morbi ut nibh a massa suscipit posuere. Nam venenatis eget justo id pulvinar. Quisque dignissim eget turpis nec
                pulvinar. Vestibulum fermentum lacus sed dignissim mattis. Aenean porttitor vitae lacus nec pellentesque. Nulla 
                sodales vehicula scelerisque. Vestibulum sed auctor arcu, vitae finibus dolor. Nam ultrices consequat odio at gravida. 
            </p>

            <h3>Welcome to Services Bonsa Conditions</h3>
            <p class="text-justify"> 
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis purus arcu. 
                Sed vitae porttitor lectus. Aenean ac odio quis est suscipit vehicula nec eget arcu. 
                Mauris malesuada libero eu ex pharetra, ac aliquam justo vestibulum. Fusce vulputate 
                est sed orci cursus efficitur. Sed volutpat sit amet mauris eget posuere. Donec a mi 
                eu dolor tincidunt pulvinar quis eleifend diam. Vestibulum diam diam, ultricies id cursus
                ac, bibendum ac quam.Donec posuere diam eget consequat facilisis. Vestibulum turpis mauris,
                hendrerit ut risus euismod, maximus iaculis nulla. Quisque tincidunt augue nunc, non pretium 
                nibh consequat vel. Morbi ornare quam neque, nec pharetra magna dapibus quis. Curabitur vehicula ultricies faucibus. 
            </p>
            <p class="text-justify">
                Integer mattis magna at nibh semper vulputate. Nunc eu gravida risus, at lobortis ipsum. Suspendisse tempus
                metus vitae interdum luctus. Pellentesque lectus lorem, laoreet in semper vitae, pellentesque sit amet sapien.
                Morbi ut nibh a massa suscipit posuere. Nam venenatis eget justo id pulvinar. Quisque dignissim eget turpis nec
                pulvinar. Vestibulum fermentum lacus sed dignissim mattis. Aenean porttitor vitae lacus nec pellentesque. Nulla 
                sodales vehicula scelerisque. Vestibulum sed auctor arcu, vitae finibus dolor. Nam ultrices consequat odio at gravida. 
            </p>
        </div>
    </div>
</div>
<!-- Terms & Conditions Area End -->
    

@endsection